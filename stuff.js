function drawImage(canvasID,src, x, y) {
	var canvas = document.getElementById(canvasID);
	var ctx = c.getContext("2d");
	var image = new Image();
	image.src = src;
	ctx.drawImage(image, x, y);
}