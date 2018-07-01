/// @description 

parent =noone;

spriteToGlitch = noone;
imageBlend = c_white;
copiedSprite = noone;
glitchedSprite = noone;

xscale = 1;
yscale = 1;

rectangleInitialPosition = ds_list_create();
glitchSurf = noone

glitchDuration = irandom_range(minGlitchDuration,maxGlitchDuration);

alarm[0] = glitchDuration; ///destroy glitch
alarm[1] = irandom_range(2,15); ///refresh glitch