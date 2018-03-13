/// @description 

parent =noone;

spriteToGlitch = noone;
copiedSprite = noone;
glitchedSprite = noone;

rectangleInitialPosition = ds_list_create();
glitchSurf = noone

glitchDuration = irandom_range(30,60);

alarm[0] = glitchDuration; ///destroy glitch
alarm[1] = irandom_range(2,15); ///refresh glitch