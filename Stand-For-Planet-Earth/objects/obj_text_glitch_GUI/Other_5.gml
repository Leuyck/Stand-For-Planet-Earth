/// @description 
if(surface_exists(glitchTextSurf)){
	surface_free(glitchTextSurf);
}
if(glitchedSprite != noone){
	sprite_delete(glitchedSprite);
}
if(copiedSprite != noone){
	sprite_delete(copiedSprite);
}