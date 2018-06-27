if(global.gamePaused == false){
	if(active == false){
		if(distance_to_object(obj_localPlayer<=activationRange)){
			active = true;
		}
	}else{
		scr_setBehaviourActionsCivil();
	}
	sprite_index = ds_map_find_value(sprites, state);
	image_speed = ds_map_find_value(imageSpeeds, state); 
	image_angle = direction;//scr_setCharacterImageAngleWithFriction(direction,5);
}

event_inherited();
