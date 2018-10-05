///@description scr_setMovingItemInLightBuffer();
//set the moving item point projecting shadow into the light buffer

var sortedList = scr_createAndSortListWithDistance(movingInstanceDetectedList,false);

for(var j = 0; j<ds_list_size(sortedList); j++){	
	var instance = ds_list_find_value(sortedList,j);
	if(instance_exists(instance) &&((instance.object_index == obj_lightCollisionCircle && instance.state!="dead" )|| instance.object_index != obj_lightCollisionCircle)){
		var size = instance.size;
		var x1 = ds_map_find_value(movingInstanceDetected[? instance], "x1");
		var y1 = ds_map_find_value(movingInstanceDetected[? instance], "y1");
		var x2 = ds_map_find_value(movingInstanceDetected[? instance], "x2");
		var y2 = ds_map_find_value(movingInstanceDetected[? instance], "y2");
		var xx = ds_map_find_value(movingInstanceDetected[? instance], "xx");
		var yy = ds_map_find_value(movingInstanceDetected[? instance], "yy");
		if(x1!=noone && y1!=noone && x2!=noone && y2!=noone && instance.object_index == obj_lightCollisionCircle)
		{
			var hidded = true;
			if((collision_line(lx,ly,x1,y1,obj_mur_parent,false,true)==noone||collision_line(lx,ly,x2,y2,obj_mur_parent,false,true)==noone||collision_line(lx,ly,xx,yy,obj_mur_parent,false,true)==noone) &&
				(collision_line(lx,ly,x1,y1,obj_door_parent,true,true)==noone||collision_line(lx,ly,x2,y2,obj_door_parent,true,true)==noone||collision_line(lx,ly,xx,yy,obj_door_parent,true,true)==noone)){
				hidded = false;	 
			}

			if((instance.object_index == obj_lightCollisionCircle && !hidded) || instance.object_index != obj_lightCollisionCircle){
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