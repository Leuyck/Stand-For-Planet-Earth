//room_persistent = true
//global.currentWorld = room
//room_goto(rm_pauseMenu);

if(!instance_exists(obj_pauseMenu)){
	instance_create_depth(obj_camera.x,obj_camera.y,-10000,obj_pauseMenu);
}else{
	with(obj_pauseMenu){
	instance_destroy();
	}
}