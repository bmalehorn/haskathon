var Canvas = (function() {
  function setup() {
    var canvas = document.getElementById("myCanvas");
    var ctx = canvas.getContext("2d");
  }

  function makeImage(src) {
    var image = new Image();
    image.src = src;
    return image;
  }

  function drawImage(image, x, y) {
    ctx.drawImage(image, x, y);
  }

  return {
    setup: setup,
    makeImage: makeImage,
    drawImage: drawImage
  };
})();

