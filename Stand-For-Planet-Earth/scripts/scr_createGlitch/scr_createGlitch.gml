///scr_createGlitch(glitchedInstance,obj_glitch)
var glitchedInstance = argument[0];
var glitchObject = argument[1];

if(glitchedInstance.glitch == noone && glitchedInstance.sprite_index !=noone){///create glitch
	glitchedInstance.glitch = instance_create_depth(x,y,glitchedInstance.depth-1,glitchObject)
	glitchedInstance.glitch.parent = glitchedInstance.id;
	glitchedInstance.glitch.spriteToGlitch = glitchedInstance.sprite_index;
	glitchedInstance.glitch.imageBlend = glitchedInstance.image_blend;
}