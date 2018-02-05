/// @description 
self.x = parent.x;
self.y = parent.y;
image_angle = parent.image_angle;

scr_animPlasmaBawl();


if(!instance_exists(parent)){
	instance_destroy();
}