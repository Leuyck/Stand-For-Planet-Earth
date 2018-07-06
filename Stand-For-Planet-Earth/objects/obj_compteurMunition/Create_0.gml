/// @description 
parent = noone;
maxMunition = noone;
currentMunition = noone;
healthBar = noone
laser = noone;
textAngle = 0;

mainColor = make_color_rgb(22,229,64);
color = mainColor

indicatorCoordinates = array_create(100,noone)
spriteAvailableForIndicator = ds_list_create();

scr_setCoordinatesOfAmmoIndicator();

alarm[0] = -1;