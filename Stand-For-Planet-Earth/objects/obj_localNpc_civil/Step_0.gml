if(global.gamePaused == false){
	if(active ==true){
		scr_setBehaviourActionsCivil();
	}else{
		if(distance_to_object(obj_localPlayer<=activationRange)){
			active = true;
		}
	}
	sprite_index = ds_map_find_value(sprites, state);
	image_speed = ds_map_find_value(imageSpeeds, state); 
	image_angle = direction;
}

event_inherited();
