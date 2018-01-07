/// @description 
depth-=1;
copiedSprite = noone;
glitchedSprite = noone

rectangleInitialPosition = ds_list_create();
copiedSurf = noone
glitchSurf = noone

glitchDuration = irandom_range(30,60);

alarm[0] = glitchDuration; ///detroy glitch
alarm[1] = irandom_range(2,15); ///refresh glitch