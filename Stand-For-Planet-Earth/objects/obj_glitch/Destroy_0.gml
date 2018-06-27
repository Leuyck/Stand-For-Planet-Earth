/// @description 
if(surface_exists(glitchSurf)){
	surface_free(glitchSurf);
}
if(glitchedSprite != noone){
	sprite_delete(glitchedSprite);
}
if(copiedSprite != noone){
	sprite_delete(copiedSprite);
}
if(instance_exists(parent)){
	parent.visible = true;
	parent.glitch = noone;
}