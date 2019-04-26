const bot = require("nodemw");
const download = require("image-downloader");
const fs = require("fs");

const prefix = "br";
const folder = "belgian_reptiles";
const path = `./../public/assets/img/${folder}/`;

let lastId = 100;

const server = "fr.wikipedia.org";
var client = new bot({
  protocol: "https",
  server,
  path: "/w", // path to api.php script
  debug: false
});
let open = 0;
let close = 0;
const getArticleData = (titles, main) =>
  new Promise((resolve, reject) => {
    main = main || titles[0];
    console.log("open", ++open);
    if (titles.length === 0) {
      reject(main + " does not exist in wikipedia");
    }
    setTimeout(() =>
      client.getArticle(titles[0], true, (err, data) => {
        if (err && /getaddrinfo ENOTFOUND fr.wikipedia.org/.test(err)) {
          console.log("getArticle, must retry, wp is busy for", titles[0]);
          return resolve(getArticleData(titles, main));
        }
        return err
          ? reject({ method: "getArticle", args: titles[0], err, data })
          : data && data.length
          ? !console.log("close", ++close) && resolve(data)
          : resolve(getArticleData(titles.slice(1), main));
      })
    );
  });

const getImageInfo = name => imgName =>
  Promise.all([
    new Promise((resolve, reject) =>
      client.getImageInfo(imgName, (err, data) => {
        if (err && /getaddrinfo ENOTFOUND fr.wikipedia.org/.test(err)) {
          console.log("getImageInfo, must retry, wp is busy for", name);
          return resolve(getImageInfo(name)(imgName));
        }
        if (err || !data) {
          reject({ method: "getImageInfo", name, args: imgName, err, data });
          return;
        }
        const { url, descriptionshorturl } = data;
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
            if (err.errno == "ENOTFOUND") {
              console.log("getImageInfo, must retry, wp is busy for", name);
              return resolve(getImageInfo(name)(imgName));
            }
            reject(err);
            return;
          }
          let metadata;
          try {
            const imgInfo = JSON.parse(data).query.pages["-1"].imageinfo;
            metadata = imgInfo && imgInfo[0] && imgInfo[0].extmetadata;
          } catch (e) {
            reject({ ...e, data });
          }

          let shortLicense = "";
          let artist = "";
          try {
            shortLicense = metadata.LicenseShortName.value;
          } catch (e) {
            shortLicense = "Unknown license";
            // console.error("No license value in", metadata);
          }
          try {
            const val = metadata.Artist.value;
            artist = /<a/.test(val)
              ? metadata.Artist.value.match(/<a [^>]+>([^<]+)<\/a>/)[1]
              : val;
          } catch (e) {
            // console.error("No artist value in", metadata);
            artist = "Unknown artist";
          }
          resolve({ shortLicense, artist });
        }
      )
    )
  ]).then(([{ descriptionshorturl, url }, { shortLicense, artist }]) => ({
    license: `${artist ? "Par " + artist + " — " : ""}${
      shortLicense ? shortLicense + ", " : ""
    }${descriptionshorturl}`,
    url
  }));

const getTaxobox = data => {
  let taxobox;
  try {
    taxobox = data.split("\n").filter(str => /^\{\{Taxobox/.test(str));
  } catch (e) {
    throw new Error("No taxobox in " + JSON.stringify(data));
    return;
  }

  if (taxobox.length === 0) {
    throw new Error("No taxobox in " + JSON.stringify(data));
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

const downloadImg = dest => imgInfos =>
  download
    .image({
      url: imgInfos.url,
      dest
    })
    .then(() => ({ license: imgInfos.license }));

const combineEntries = a => b => ({ ...a, ...b });

fs.readFile(`./listings_cnb/${prefix}.json`, (err, subjects) => {
  subjects = JSON.parse(subjects);
  console.log("total", subjects.length);
  Promise.all(
    subjects.map((subject, idx) =>
      getArticleData(
        [subject.binominalName, subject.vernacularName].concat(
          subject.otherNames ? subject.otherNames : []
        )
      )
        .then(getTaxobox)
        .then(extractImgName)
        .then(getImageInfo(subject.binominalName))
        .then(downloadImg(path + prefix + "_" + ++lastId + ".jpg"))
        .then(combineEntries({ ...subject, id: lastId }))
    )
  )
    .then(entries => {
      let json;
      try {
        json = JSON.stringify(entries);
      } catch (e) {
        console.error("JSON invalide", entries);
        throw e;
      }
      fs.writeFile(`./../data/${prefix}.json`, json, "utf8", err =>
        err ? console.error("write err:", err) : console.log("done.")
      );
    })
    .catch(err => console.error("all err:", err));
});

// plants bugs
/* 
{ "vernacularName": "Ronce commune", "binominalName": "Rubus fruticosus" }
{ "vernacularName": "Salicorne d'Europe", "binominalName": "Salicornia europaea" },
{ "vernacularName": "Violette odorante", "binominalName": "Viola odorata" },
{ "vernacularName": "Violette de Rivinus", "binominalName": "Viola riviniana" }, 
{ "vernacularName": "pissenlit", "binominalName": "Taraxacum spp." },
 */

// mammals bugs
/* {
  "vernacularName": "Lièvre d'Europe",
  "binominalName": "Lepus europaeus"
}, */
