///@description scr_setStaticItemInLightBuffer();
//set the statics item point projecting shadow into the light buffer
var centerOfSurfX = radius;
var centerOfSurfY = radius;
	
for(var i= 0; i<array_height_2d(staticInstanceDetected); i++)
{
	var instanceId =staticInstanceDetected[i,0];
	if(!instance_exists(instanceId)) then continue;
	var size = instanceId.size;
	
	var x1 = staticInstanceDetected[i,1];
	var y1 = staticInstanceDetected[i,2];
	var x2 = staticInstanceDetected[i,3];
	var y2 = staticInstanceDetected[i,4];
	var xx = staticInstanceDetected[i,5];
	var yy = staticInstanceDetected[i,6];
	
	var relativeX1 = x1 - obj_camera.x + surface_get_width(surf)/2;
	var relativeY1 = y1 - obj_camera.y + surface_get_height(surf)/2;
	var relativeX2 = x2 - obj_camera.x + surface_get_width(surf)/2;
	var relativeY2 = y2 - obj_camera.y + surface_get_height(surf)/2;
	var relativeXX = xx - obj_camera.x + surface_get_width(surf)/2;
	var relativeYY = yy - obj_camera.y + surface_get_height(surf)/2;
	
	draw_circle(relativeXX,relativeYY,5,false);

	scr_projectShadow(other.VBuffer,  relativeX1,relativeY1, relativeX2,relativeY2,relativeXX,relativeYY, lx - obj_camera.x + surface_get_width(surf)/2,ly - obj_camera.y + surface_get_height(surf)/2,false,size);
}