const fs = require("fs");
const sharp = require("sharp");
const imgSrc = "./public/assets/img";
const imgDest = "./public/assets/img/resized";
const resize = (fileName, width, height) => {
  return sharp(`${imgSrc}/${fileName}`)
    .resize(width, height)
    .toBuffer()
    .then(buffer =>
      fs.writeFile(`${imgDest}/${fileName}`, buffer, err => {
        if (err) throw err;
      })
    );
};

fs.readdir(imgSrc, (err, files) => {
  files.forEach(fileName => {
    resize(fileName, null, 250);
  });
});
