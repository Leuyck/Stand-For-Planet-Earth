///calcul for doors
var distanceEntre2PointPrecis = argument[0];
var searchingPointPrec = (360*distanceEntre2PointPrecis)/(2*pi*radius+distanceEntre2PointPrecis);
for (var i = 0; i < ds_list_size(staticInstanceMakingMovingShadowList); ++i) {
    var instance = ds_list_find_value(staticInstanceMakingMovingShadowList,i);
	var baseDoorX = instance.x+lengthdir_x(instance.sprite_width/2-1,instance.image_angle+180);
	var baseDoorY = instance.y+lengthdir_y(instance.sprite_width/2-1,instance.image_angle+180);
	var angleChecked = point_direction(x,y,baseDoorX,baseDoorY);
	scr_addInstanceIntoMapAndListForLight(instance,movingInstanceDetected,movingInstanceDetectedList);
	
	//Put xx & yy to the top or bottom edge of the sprite
	var offset = 5*instance.image_yscale;
	var xx = instance.x;
	var yy = instance.y;
	if(point_direction(xx,yy,lx,ly)>=instance.image_angle && point_direction(xx,yy,lx,ly)<instance.image_angle+180){
		xx+=lengthdir_x(instance.sprite_height/2-offset,instance.image_angle+90);
		yy+=lengthdir_y(instance.sprite_height/2-offset,instance.image_angle+90);
	}else{
		xx+=lengthdir_x(instance.sprite_height/2-offset,instance.image_angle-90);
		yy+=lengthdir_y(instance.sprite_height/2-offset,instance.image_angle-90);
	}
	
	//Calcul and Sorte the coordinates
	var x1 = xx+lengthdir_x(instance.sprite_width/2-1,instance.image_angle-180);
	var y1 = yy+lengthdir_y(instance.sprite_width/2-1,instance.image_angle-180);
	var x2 = xx+lengthdir_x(instance.sprite_width/2-1,instance.image_angle);
	var y2 = yy+lengthdir_y(instance.sprite_width/2-1,instance.image_angle);
	if(angle_difference(point_direction(lx,ly,x1,y1),point_direction(lx,ly,x2,y2))>0){
		var tempx = x1;
		var tempy = y1;
		x1 = x2;
		y1 = y2;
		x2 = tempx;
		y2 = tempy;
	}
	
	//Confirm Coordinates
	if(collision_line(lx,ly,x1,y1,instance,true,false) != instance){
		var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,obj_door_parent,instance,true)+1;
		var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,obj_door_parent,instance,true,true);
		x1y1Coordinates = scr_decalCollisionCoordinates(x1y1Coordinates,instanceLowestPointAngle-1);
		y1 = ds_list_find_value(x1y1Coordinates,1);
		x1 = ds_list_find_value(x1y1Coordinates,0);
		ds_list_destroy(x1y1Coordinates);
	}
	if(collision_line(lx,ly,x2,y2,instance,true,false) != instance){
		var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,obj_door_parent,instance,true)-1;
		var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,obj_door_parent,instance,true,true);
		x2y2Coordinates = scr_decalCollisionCoordinates(x2y2Coordinates,instanceHighestPointAngle+1);
		y2 = ds_list_find_value(x2y2Coordinates,1);
		x2 = ds_list_find_value(x2y2Coordinates,0);
		ds_list_destroy(x2y2Coordinates);
	}
	ds_map_replace(movingInstanceDetected[? instance],"x1",x1);
	ds_map_replace(movingInstanceDetected[? instance],"y1",y1);
	ds_map_replace(movingInstanceDetected[? instance],"x2",x2);
	ds_map_replace(movingInstanceDetected[? instance],"y2",y2);
	ds_map_replace(movingInstanceDetected[? instance],"xx",baseDoorX);
	ds_map_replace(movingInstanceDetected[? instance],"yy",baseDoorY);	
}