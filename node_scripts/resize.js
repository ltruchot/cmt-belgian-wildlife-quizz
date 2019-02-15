// node
const fs = require("fs");
const path = require("path");
// npm
const sharp = require("sharp");

const imgSrc = "./public/assets/img/belgian_birds";
const imgDest = "./public/assets/img/belgian_birds/resized";
const imgHeight = 230;

const rmDirP = path =>
  new Promise((resolve, reject) => {
    fs.rmdir(path, _ => resolve(true));
  });
const mkDirP = path =>
  new Promise((resolve, reject) => {
    fs.mkdir(path, _ => resolve(true));
  });

const resize = (fileName, width, height) => {
  return sharp(path.join(imgSrc, fileName))
    .resize(width, height)
    .toBuffer()
    .then(buffer =>
      fs.writeFile(path.join(imgDest, fileName), buffer, err => {
        if (err) {
          throw err;
        }
      })
    );
};
rmDirP(imgDest)
  .then(mkDirP(imgDest))
  .then(() =>
    fs.readdir(imgSrc, (err, files) => {
      files.forEach(fileName => {
        resize(fileName, null, imgHeight);
      });
    })
  );