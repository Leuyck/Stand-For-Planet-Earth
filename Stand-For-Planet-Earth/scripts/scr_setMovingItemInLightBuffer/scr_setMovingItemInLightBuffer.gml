///@description scr_setMovingItemInLightBuffer();
//set the moving item point projecting shadow into the light buffer

var centerOfSurfX = rad;
var centerOfSurfY = rad;
	
for(var i= 0; i<array_height_2d(movingInstanceDetected); i++)
{
	var x1 = movingInstanceDetected[i,1];
	var y1 = movingInstanceDetected[i,2];
	var x2 = movingInstanceDetected[i,3];
	var y2 = movingInstanceDetected[i,4];
	var xx = movingInstanceDetected[i,5];
	var yy = movingInstanceDetected[i,6];
	
	if(x1!=noone && y1!=noone && x2!=noone && y2!=noone)
	{
		var relativeX1 = x1 - lx + rad;
		var relativeY1 = y1 - ly + rad;
		var relativeX2 = x2 - lx + rad;
		var relativeY2 = y2 - ly + rad;
		var relativeXX = xx - lx + rad;
		var relativeYY = yy - ly + rad;

		scr_projectShadow(other.VBuffer,  relativeX1,relativeY1, relativeX2,relativeY2, relativeXX, relativeYY, centerOfSurfX,centerOfSurfY, true);
	}
}