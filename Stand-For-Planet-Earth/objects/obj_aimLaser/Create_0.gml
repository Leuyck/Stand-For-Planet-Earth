/// @description 
laserCoordinates = array_create(100,noone)
spriteAvailableForLaser = ds_list_create();
hero = noone;
color = c_white;
alpha = 1;
depth=object_get_depth(obj_decor_base)+1;
size = 200;
scr_setCoodinatesOfLaser();
