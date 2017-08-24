if (instance_exists (obj_server))
{
	scr_setBehaviourActionsCivil();
		
	sprite_index = ds_map_find_value(sprites, state);
	image_speed = ds_map_find_value(imageSpeeds, state); 
	image_angle = direction;
}

event_inherited();
