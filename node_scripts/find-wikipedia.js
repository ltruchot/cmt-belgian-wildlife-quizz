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

const getArticleData = title =>
  new Promise((resolve, reject) =>
    client.getArticle(title, (err, data) => (err ? reject(err) : resolve(data)))
  );

const getImageInfo = imgName =>
  Promise.all([
    new Promise((resolve, reject) =>
      client.getImageInfo(
        imgName,
        (err, { url, descriptionshorturl, metadata }) =>
          err
            ? reject(err)
            : resolve({
                url,
                descriptionshorturl,
                artist: metadata
                  .find(a => a.name === "Artist")
                  .value.split(";")[0]
              })
      )
    ),
    new Promise((resolve, reject) =>
      client.fetchUrl(
        `https://${server}/w/api.php?action=query&prop=imageinfo&iiprop=extmetadata&titles=${encodeURIComponent(
          imgName
        )}&format=json`,
        (err, data) =>
          err
            ? reject(err)
            : resolve(
                JSON.parse(data).query.pages["-1"].imageinfo[0].extmetadata
                  .LicenseShortName.value
              )
      )
    )
  ]).then(([{ descriptionshorturl, artist, url }, shortLicense]) => ({
    license: `Par ${artist} — ${
      shortLicense ? shortLicense + "," : ""
    } ${descriptionshorturl}`,
    url
  }));

const getTaxobox = data =>
  data.split("\n").filter(str => /^\{\{Taxobox/.test(str));
const extractImgName = taxobox => "File:" + taxobox[0].split("|")[3].trim();

const downloadImg = storageName => imgInfos =>
  download
    .image({
      url: imgInfos.url,
      dest: `public/assets/img/belgian_birds/${storageName}.jpg`
    })
    .then(() => ({ id: storageName, license: imgInfos.license }));

const prefix = "bb";
let lastId = 117;
const subjects = [
  {
    vernacularName: "Goéland brun",
    binominalName: "Larus fuscus"
  }
];
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
