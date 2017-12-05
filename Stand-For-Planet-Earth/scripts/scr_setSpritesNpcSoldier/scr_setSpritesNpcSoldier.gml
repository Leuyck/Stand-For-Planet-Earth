///scr_setSpritesNpc1
 
sprite_index = ds_map_find_value(sprites, state);
image_speed = ds_map_find_value(imageSpeeds, state); 
image_angle = direction;

///update the speed of move sprites
var moveSpd = spd/normalSpd;

if(moveSpd != ds_map_find_value(imageSpeeds, "walking")){
	ds_map_replace(imageSpeeds, "walking", moveSpd);
	ds_map_replace(imageSpeeds, "chasing", moveSpd*2);
}

//calcul the image speed if dot on the character
var imageSpd = shot1PerSec/shot1PerSecMax;

if(imageSpd != ds_map_find_value(imageSpeeds, "firing")){
	ds_map_replace(imageSpeeds, "firing", imageSpd);
    ds_map_replace(imageSpeeds, "delay_firing", imageSpd);
}