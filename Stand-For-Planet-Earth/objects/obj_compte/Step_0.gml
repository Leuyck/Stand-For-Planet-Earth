/// @description 
if (gamepad_is_connected(0)){
	if(!instance_exists(obj_controller)){
		instance_create_depth(x,y,depth,obj_controller)	
	}
}else{
	instance_destroy(obj_controller);
}