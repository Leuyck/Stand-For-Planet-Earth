////scr_setPauseGame();

if(pauseKey && (heroSelected!=noone || self.object_index == obj_controller_keyboard)){
	if(!instance_exists(obj_pauseMenu)){
		var instance = instance_create_depth(obj_camera.x,obj_camera.y,-10000,obj_pauseMenu);
	}else{
		if(obj_pauseMenu.alarm[0] ==-1){
			instance_destroy(obj_pauseMenu);
		}
	}
}

if(cancelKey && (heroSelected!=noone || self.object_index == obj_controller_keyboard)){
	if(instance_exists(obj_pauseMenu)){
		if(obj_pauseMenu.alarm[0] ==-1){
			instance_destroy(obj_pauseMenu);
		}
	}
}