///@description scr_setStaticItemInLightBuffer();
//set the statics item point projecting shadow into the light buffer
var centerOfSurfX = rad;
var centerOfSurfY = rad;
	
for(var i= 0; i<array_height_2d(staticInstanceDetected); i++)
{
	var x1 = staticInstanceDetected[i,1];
	var y1 = staticInstanceDetected[i,2];
	var x2 = staticInstanceDetected[i,3];
	var y2 = staticInstanceDetected[i,4];
	var xx = staticInstanceDetected[i,5];
	var yy = staticInstanceDetected[i,6];
	
	var relativeX1 = x1 - lx + rad;
	var relativeY1 = y1 - ly + rad;
	var relativeX2 = x2 - lx + rad;
	var relativeY2 = y2 - ly + rad;
	var relativeXX = xx - lx + rad;
	var relativeYY = yy - ly + rad;

	scr_projectShadow(other.VBuffer,  relativeX1,relativeY1, relativeX2,relativeY2,relativeXX,relativeYY, centerOfSurfX,centerOfSurfY,false);
}