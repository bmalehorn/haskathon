var Canvas = (function() {
  var ctx;
  function setup(imageSrcs, callback) {
    var canvas = document.getElementById("myCanvas");
    ctx = canvas.getContext("2d");
    loadImages(imageSrcs, callback);
  }

  function makeImage(src) {
    var image = new Image();
    image.src = src;
    return image;
  }


  var getCachedImage = _.memoize(makeImage);

  function drawImage(imageSrc, x, y) {
    ctx.drawImage(getCachedImage(imageSrc), x, y);
  }

  var images = {};

  function loadImages(imageSrcs, callback) {
    var onload = _.after(imageSrcs.length, callback);
    imageSrcs.forEach(function(imageSrc) {
      var image = new Image();
      image.onload = onload;
      image.src = imageSrc;
    });
  }

  return {
    setup: setup,
    drawImage: drawImage,
    loadImages: loadImages
  };
})();

