///@description scr_setStaticItemInLightBuffer();
//set the statics item point projecting shadow into the light buffer
var centerOfSurfX = radius;
var centerOfSurfY = radius;
	
for(var i= 0; i<array_height_2d(staticInstanceDetected)-1; i++)
{
	var x1 = staticInstanceDetected[i,1];
	var y1 = staticInstanceDetected[i,2];
	var x2 = staticInstanceDetected[i,3];
	var y2 = staticInstanceDetected[i,4];
	var xx = staticInstanceDetected[i,5];
	var yy = staticInstanceDetected[i,6];
	
	var relativeX1 = x1 - lx + radius;
	var relativeY1 = y1 - ly + radius;
	var relativeX2 = x2 - lx + radius;
	var relativeY2 = y2 - ly + radius;
	var relativeXX = xx - lx + radius;
	var relativeYY = yy - ly + radius;

	scr_projectShadow(other.VBuffer,  relativeX1,relativeY1, relativeX2,relativeY2,relativeXX,relativeYY, centerOfSurfX,centerOfSurfY,false);
}