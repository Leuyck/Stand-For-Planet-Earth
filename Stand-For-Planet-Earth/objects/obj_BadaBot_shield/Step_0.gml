/// @description 
if(instance_exists(parent)){
	x = parent.x;
	y = parent.y;
	image_angle = parent.image_angle
}else{
	instance_destroy();	
}