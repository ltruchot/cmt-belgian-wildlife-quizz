// node
const fs = require("fs");
const path = require("path");

const imgSrc = "./../public/assets/img/belgian_birds";

const prefix = "bb";
fs.readdir(imgSrc, (err, files) => {
  files.forEach(fileName => {
    fs.rename(
      path.join(imgSrc, fileName),
      path.join(imgSrc, fileName.replace(prefix, prefix + "_")),
      err => {
        if (err) {
          throw err;
        }
      }
    );
  });
});
