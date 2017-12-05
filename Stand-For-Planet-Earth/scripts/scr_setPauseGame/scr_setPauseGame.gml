////scr_setPauseGame();


if(controller.pauseKey){
	if(!instance_exists(obj_pauseMenu)){
		var instance = instance_create_depth(obj_camera.x,obj_camera.y,-10000,obj_pauseMenu);
		instance.controller = controller;
	}else{
		if(obj_pauseMenu.controller == controller){
			with(obj_pauseMenu){
				if(alarm[0] ==-1){
					instance_destroy();
				}
			}
		}
	}
}

if(instance_exists(obj_pauseMenu)){
	if(obj_pauseMenu.controller == controller){
		if(controller.cancelKey){
			with(obj_pauseMenu){
				if(alarm[0] ==-1){
					instance_destroy();
				}
			}
		}
	}
}