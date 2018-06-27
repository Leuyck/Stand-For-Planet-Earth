/// @description 
if(surface_exists(glitchSurf)){
	surface_free(glitchSurf);
}
if(surface_exists(copiedSurf)){
	surface_free(copiedSurf);
}
if(glitchedSprite != noone){
	sprite_delete(glitchedSprite);
}
if(copiedSprite != noone){
	sprite_delete(copiedSprite);
}