///scr_calculShadowForDoors

for (var i = 0; i < ds_list_size(staticInstanceMakingMovingShadowList); ++i) {
    var instance = ds_list_find_value(staticInstanceMakingMovingShadowList,i);
	scr_addInstanceIntoMapAndListForLight(instance,movingInstanceDetected,movingInstanceDetectedList);
	
	var x1 = noone;
	var x2 = noone;
	var y1 = noone;
	var y2 = noone;
	if(point_direction(lx,ly,instance.x,instance.bbox_top)>135 && point_direction(lx,ly,instance.x,instance.bbox_top)<=225){
		x1 = instance.x;
		y1 = instance.bbox_top
	}
	if(point_direction(lx,ly,instance.x,instance.bbox_top)>315 || point_direction(lx,ly,instance.x,instance.bbox_top)<=45){
		x2 = instance.x;
		y2 = instance.bbox_top
	}
	if(point_direction(lx,ly,instance.x,instance.bbox_bottom)>135 && point_direction(lx,ly,instance.x,instance.bbox_bottom)<=225){
		x2 = instance.x;
		y2 = instance.bbox_bottom
	}
	if(point_direction(lx,ly,instance.x,instance.bbox_bottom)>315 || point_direction(lx,ly,instance.x,instance.bbox_bottom)<=45){
		x1 = instance.x;
		y1 = instance.bbox_bottom
	}
	if(point_direction(lx,ly,instance.bbox_left,instance.y)>225 && point_direction(lx,ly,instance.bbox_left,instance.y)<=315){
		x1=instance.bbox_left;
		y1=instance.y;
	}
	if(point_direction(lx,ly,instance.bbox_left,instance.y)>45 && point_direction(lx,ly,instance.bbox_left,instance.y)<=135){
		x2=instance.bbox_left;
		y2=instance.y;
	}
	if(point_direction(lx,ly,instance.bbox_right,instance.y)>225 && point_direction(lx,ly,instance.bbox_right,instance.y)<=315){
		x2=instance.bbox_right;
		y2=instance.y;
	}
	if(point_direction(lx,ly,instance.bbox_right,instance.y)>45 && point_direction(lx,ly,instance.bbox_right,instance.y)<=135){
		x1=instance.bbox_right;
		y1=instance.y;
	}
	if(x1 == noone ||y1 == noone){
		var dir = point_direction(lx,ly,instance.x,instance.y)
		if(dir <=45 || dir >315){
			x1 =instance.x;
			y1= instance.bbox_bottom
		}else if(dir>45 && dir<=135){
			x1 = instance.bbox_right;
			y1 = instance.y
		}else if(dir>135 && dir <=225){
			x1 =instance.x;
			y1= instance.bbox_top
		}else{
			x1 = instance.bbox_left;
			y1 = instance.y
		}
	}
	if(x2 == noone || y2 == noone){
		var dir = point_direction(lx,ly,instance.x,instance.y)
		if(dir <=45 || dir >315){
			x2 = instance.x;
			y2= instance.bbox_top;
		}else if(dir>45 && dir<=135){
			x2 = instance.bbox_left;
			y2 = instance.y
		}else if(dir>135 && dir <=225){
			x2 = instance.x;
			y2= instance.bbox_bottom;
		}else{
			x2 = instance.bbox_right;
			y2 = instance.y
		}
	}
	
	
	//var angleChecked = point_direction(x,y,instance.x,instance.y);
	//var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,obj_door_parent,instance,true)+1;
	//var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,obj_door_parent,instance,true)-1;
	//var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,obj_door_parent,instance,true,true);
	//var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,obj_door_parent,instance,true,true);
	//x1y1Coordinates = scr_decalCollisionCoordinates(x1y1Coordinates,instanceLowestPointAngle-1);
	//x2y2Coordinates = scr_decalCollisionCoordinates(x2y2Coordinates,instanceHighestPointAngle+1);
		
	//var y1 = ds_list_find_value(x1y1Coordinates,1);
	//var x1 = ds_list_find_value(x1y1Coordinates,0);
	//var y2 = ds_list_find_value(x2y2Coordinates,1);
	//var x2 = ds_list_find_value(x2y2Coordinates,0);
	ds_map_replace(movingInstanceDetected[? instance],"x1",x1);
	ds_map_replace(movingInstanceDetected[? instance],"y1",y1);
	ds_map_replace(movingInstanceDetected[? instance],"x2",x2);
	ds_map_replace(movingInstanceDetected[? instance],"y2",y2);
	ds_map_replace(movingInstanceDetected[? instance],"xx",instance.x);
	ds_map_replace(movingInstanceDetected[? instance],"yy",instance.y);	
					
	//ds_list_destroy(x1y1Coordinates);
	//ds_list_destroy(x2y2Coordinates);
	
}