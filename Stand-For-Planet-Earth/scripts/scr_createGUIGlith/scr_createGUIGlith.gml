///scr_createGUIGlith(glitchedInstance)
var glitchedInstance = argument[0];

if(glitchedInstance.glitch == noone && glitchedInstance.sprite_index !=noone){///create glitch
	glitchedInstance.glitch = instance_create_depth(x,y,glitchedInstance.depth-1,obj_glitch_GUI)
	glitchedInstance.glitch.parent = glitchedInstance.id;
	glitchedInstance.glitch.spriteToGlitch = glitchedInstance.sprite_index;
}