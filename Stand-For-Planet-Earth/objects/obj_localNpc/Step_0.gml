if(global.gamePaused == false){
	if(active == false) {
		if (distance_to_object(obj_localPlayer) <= activationRange) {
			active = true;
		}
	}
	if (active == true) {
		behaviour = src_getDefaultNpcBehaviour();
		switch(behaviour) {
			case "walking":
		        src_patrol();
		        break;
			
			case "waiting":
			    src_wait();
		        break;
		}
		
		sprite_index = ds_map_find_value(sprites, state);
		image_speed = ds_map_find_value(imageSpeeds, state); 

		scr_destroyNpcWhenDead();
	}
}

