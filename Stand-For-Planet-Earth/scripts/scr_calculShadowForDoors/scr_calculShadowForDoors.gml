///calcul for doors
var distanceEntre2PointPrecis = argument[0];
var searchingPointPrec = 0.10//(360*distanceEntre2PointPrecis)/(2*pi*radius+distanceEntre2PointPrecis);
for (var i = 0; i < ds_list_size(staticInstanceMakingMovingShadowList); ++i) {
    var instance = ds_list_find_value(staticInstanceMakingMovingShadowList,i);
	var angleChecked = point_direction(x,y,instance.x,instance.y);
	scr_addInstanceIntoMapAndListForLight(instance,movingInstanceDetected,movingInstanceDetectedList);
	var offset = 8*instance.image_yscale;
	var xx = instance.x;
	var yy = instance.y;
	if(point_direction(xx,yy,lx,ly)>=instance.image_angle && point_direction(xx,yy,lx,ly)<instance.image_angle+180){
		xx+=lengthdir_x(instance.sprite_height/2-offset,instance.image_angle+90);
		yy+=lengthdir_y(instance.sprite_height/2-offset,instance.image_angle+90);
	}else{
		xx+=lengthdir_x(instance.sprite_height/2-offset,instance.image_angle-90);
		yy+=lengthdir_y(instance.sprite_height/2-offset,instance.image_angle-90);
	}
	
	var x1 = xx+lengthdir_x(instance.sprite_width/2-1,instance.image_angle);
	var y1 = yy+lengthdir_y(instance.sprite_width/2-1,instance.image_angle);
	if(collision_line(lx,ly,x1,y1,instance,true,false) != instance){show_debug_message(string(instance)+"  x1");
		var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,obj_door_parent,instance,true)+1;
		var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,obj_door_parent,instance,true,true);
		x1y1Coordinates = scr_decalCollisionCoordinates(x1y1Coordinates,instanceLowestPointAngle-1);
		y1 = ds_list_find_value(x1y1Coordinates,1);
		x1 = ds_list_find_value(x1y1Coordinates,0);
		ds_list_destroy(x1y1Coordinates);
	}
	
	var x2 = xx+lengthdir_x(instance.sprite_width/2-1,instance.image_angle-180);
	var y2 = yy+lengthdir_y(instance.sprite_width/2-1,instance.image_angle-180);
	if(collision_line(lx,ly,x2,y2,instance,true,false) != instance){show_debug_message(string(instance)+"  x2");
		var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,obj_door_parent,instance,true)-1;
		var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,obj_door_parent,instance,true,true);
		x2y2Coordinates = scr_decalCollisionCoordinates(x2y2Coordinates,instanceHighestPointAngle+1);
		y2 = ds_list_find_value(x2y2Coordinates,1);
		x2 = ds_list_find_value(x2y2Coordinates,0);
		ds_list_destroy(x2y2Coordinates);
	}
	xx = (x1+x2)/2;
	yy = (y1+y2)/2;
	ds_map_replace(movingInstanceDetected[? instance],"x1",x1);
	ds_map_replace(movingInstanceDetected[? instance],"y1",y1);
	ds_map_replace(movingInstanceDetected[? instance],"x2",x2);
	ds_map_replace(movingInstanceDetected[? instance],"y2",y2);
	ds_map_replace(movingInstanceDetected[? instance],"xx",xx);
	ds_map_replace(movingInstanceDetected[? instance],"yy",yy);	
}