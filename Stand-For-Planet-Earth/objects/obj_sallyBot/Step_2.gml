/// @description 

sprite_index = ds_map_find_value(sprites, state);
image_speed = ds_map_find_value(imageSpeeds, state); 

image_angle = scr_setCharacterImageAngleWithFriction(direction, 5)