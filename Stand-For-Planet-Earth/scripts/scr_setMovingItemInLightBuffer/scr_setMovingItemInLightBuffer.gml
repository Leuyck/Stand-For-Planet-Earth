///@description scr_setMovingItemInLightBuffer();
//set the moving item point projecting shadow into the light buffer

var sortedArray = scr_createAndSortArrayFromArrayWithDistance(movingInstanceDetected);
for(var j = 0; j<array_height_2d(sortedArray); j++)
{	
	var instanceId = sortedArray[j,0]
	if((instanceId.object_index == obj_lightCollisionCircle && instanceId.state!="dead" )|| instanceId.object_index != obj_lightCollisionCircle){
		var size = instanceId.size;
		var x1 = sortedArray[j,1];
		var y1 = sortedArray[j,2];
		var x2 = sortedArray[j,3];
		var y2 = sortedArray[j,4];
		var xx = sortedArray[j,5];
		var yy = sortedArray[j,6];
		if(x1!=noone && y1!=noone && x2!=noone && y2!=noone)
		{
			var hidded = true;
			if((collision_line(lx,ly,x1,y1,obj_mur_parent,false,true)==noone||collision_line(lx,ly,x2,y2,obj_mur_parent,false,true)==noone||collision_line(lx,ly,xx,yy,obj_mur_parent,false,true)==noone) &&
				(collision_line(lx,ly,x1,y1,obj_door_parent,true,true)==noone||collision_line(lx,ly,x2,y2,obj_door_parent,true,true)==noone||collision_line(lx,ly,xx,yy,obj_door_parent,true,true)==noone)){
				hidded = false;	 
			}

			if((instanceId.object_index == obj_lightCollisionCircle && !hidded) || instanceId.object_index != obj_lightCollisionCircle){
				var relativeX1 = x1 - obj_camera.x + surface_get_width(surf)/2;
				var relativeY1 = y1 - obj_camera.y + surface_get_height(surf)/2;
				var relativeX2 = x2 - obj_camera.x + surface_get_width(surf)/2;
				var relativeY2 = y2 - obj_camera.y + surface_get_height(surf)/2;
				var relativeXX = xx - obj_camera.x + surface_get_width(surf)/2;
				var relativeYY = yy - obj_camera.y + surface_get_height(surf)/2;

				scr_projectShadow(other.VBuffer,  relativeX1,relativeY1, relativeX2,relativeY2,relativeXX,relativeYY, lx - obj_camera.x + surface_get_width(surf)/2,ly - obj_camera.y + surface_get_height(surf)/2,true,size);
			}
		}
	}
}