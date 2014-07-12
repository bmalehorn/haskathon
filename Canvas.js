var Canvas = (function() {
  var ctx;
  var imageMap = {};
  function setup(imageSrcs, callback) {
    var canvas = document.getElementById("myCanvas");
    ctx = canvas.getContext("2d");
    loadImages(imageSrcs, callback);
  }

  function drawImage(imageSrc, x, y) {
    if (!imageSrc in imageMap) {
      // should definitely be in there
      debugger;
    }
    ctx.drawImage(imageMap[imageSrc], x, y);
  }

  var images = {};

  function loadImages(imageSrcs, callback) {
    var onload = _.after(imageSrcs.length, callback);
    imageSrcs.forEach(function(imageSrc) {
      var image = new Image();
      image.onload = onload;
      image.src = imageSrc;
      imageMap[imageSrc] = image;
    });
  }

  return {
    setup: setup,
    drawImage: drawImage,
    loadImages: loadImages
  };
})();

