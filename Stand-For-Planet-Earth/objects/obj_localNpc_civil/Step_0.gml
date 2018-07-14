if(global.gamePaused == false) {
	if (active == false) {
		if (distance_to_object(obj_localPlayer) <= activationRange) {
			active = true;
		}
	}
	if (active == true) {
		scr_setBehaviourActionsCivil();
		if(behaviour != noone) {
			sprite_index = ds_map_find_value(sprites, state);
			image_speed = ds_map_find_value(imageSpeeds, state); 
			image_angle = direction;	
		}
		else {
			event_inherited();	
		}
	}
	
}


