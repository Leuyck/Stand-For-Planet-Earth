//scr_getMobilierOnTheWayOfBullet();
var mobilierOnTheWay = noone;
var listOfMobilierCollision = collision_line_list(xstart,ystart,xstart+lengthdir_x(maxDistance,direction),ystart+lengthdir_y(maxDistance,direction),obj_mobilier_parent,true,false);
if(listOfMobilierCollision != noone){
	var minDistance = maxDistance;
	for (var i = 0; i < ds_list_size(listOfMobilierCollision); ++i) {
		var instance = ds_list_find_value(listOfMobilierCollision,i);
		if(instance.bulletCrossed == false){
			if(distance_to_object(instance)<minDistance){
				minDistance = distance_to_object(instance);
				mobilierOnTheWay = instance
			}
		}
	}
	ds_list_destroy(listOfMobilierCollision);
	return mobilierOnTheWay;
}else{
	return noone;	
}