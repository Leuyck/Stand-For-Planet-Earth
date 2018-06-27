/// @description 

///TEXT PARAMETERS
text = "";
font = fnt_3_large;
color = c_white;
outline = true;
outlineSize = 1;
outlineColor = c_black;
parent = noone;
angle = 0;

///Other
copiedSprite = noone;
glitchedSprite = noone;
glitchEnable = true;

rectangleInitialPosition = ds_list_create();
glitchTextSurf = noone

glitchDuration =15 //irandom_range(30,60);

destroy = false;

alarm[0] = glitchDuration; ///stop glitch
alarm[1] = irandom_range(2,5); ///refresh glitch