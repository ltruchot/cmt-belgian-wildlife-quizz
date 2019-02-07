const bot = require("nodemw");
const download = require("image-downloader");
const fs = require("fs");

const server = "fr.wikipedia.org";

var client = new bot({
  protocol: "https",
  server,
  path: "/w", // path to api.php script
  debug: false
});

const log = a => !console.log(a) && a;
const getArticleData = title =>
  new Promise((resolve, reject) =>
    client.getArticle(title, true, (err, data) =>
      err ? reject(err) : resolve(data)
    )
  );

const getImageInfo = imgName =>
  Promise.all([
    new Promise((resolve, reject) =>
      client.getImageInfo(imgName, (err, data) => {
        const { url, descriptionshorturl } = data;
        if (err) {
          reject(err);
          return;
        }
        resolve({
          url,
          descriptionshorturl
        });
      })
    ),
    new Promise((resolve, reject) =>
      client.fetchUrl(
        `https://${server}/w/api.php?action=query&redirects&prop=imageinfo&iiprop=extmetadata&titles=${encodeURIComponent(
          imgName
        )}&format=json`,
        (err, data) => {
          if (err) {
            reject(err);
            return;
          }
          const metadata = JSON.parse(data).query.pages["-1"].imageinfo[0]
            .extmetadata;
          let shortLicense = "";
          let artist = "";
          try {
            shortLicense = metadata.LicenseShortName.value;
          } catch (e) {
            console.error("No license value in", metadata);
          }
          try {
            const val = metadata.Artist.value;
            artist = /<a/.test(val)
              ? metadata.Artist.value.match(/<a [^>]+>([^<]+)<\/a>/)[1]
              : val;
          } catch (e) {
            console.error("No artist value in", metadata);
          }
          resolve({ shortLicense, artist });
        }
      )
    )
  ]).then(([{ descriptionshorturl, url }, { shortLicense, artist }]) => ({
    license: `${artist ? " Par " + artist + " — " : ""}${
      shortLicense ? shortLicense + ", " : ""
    }${descriptionshorturl}`,
    url
  }));

const getTaxobox = data => {
  const taxobox = data.split("\n").filter(str => /^\{\{Taxobox/.test(str));
  if (taxobox.length === 0) {
    throw new Error("No taxobox in" + JSON.stringify(data));
    return;
  }
  return taxobox;
};

const extractImgName = taxobox => {
  let imgName;
  try {
    imgName = taxobox[0].split("|")[3].trim();
  } catch (e) {
    console.error("can't extract image name from ", taxobox);
    throw e;
    return;
  }
  return "File:" + imgName;
};

const downloadImg = storageName => imgInfos =>
  download
    .image({
      url: imgInfos.url,
      dest: `public/assets/img/belgian_birds/${storageName}.jpg`
    })
    .then(() => ({ id: storageName, license: imgInfos.license }));

const prefix = "bb";
let lastId = 118;
const subjects = [];
const composeEntry = subject => current => ({ ...current, ...subject });
Promise.all(
  subjects.map(subject =>
    getArticleData(subject.vernacularName)
      .then(getTaxobox)
      .then(extractImgName)
      .then(getImageInfo)
      .then(downloadImg(prefix + ++lastId))
      .then(composeEntry(subject))
  )
)
  .then(entries =>
    fs.writeFile(`data/${prefix}.json`, JSON.stringify(entries), "utf8", err =>
      err ? console.error(err) : console.log("done.")
    )
  )
  .catch(console.err);
