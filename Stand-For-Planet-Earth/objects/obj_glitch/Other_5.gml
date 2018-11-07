/// @description 
if(surface_exists(glitchSurf)){
	surface_free(glitchSurf);
}
if(copiedSprite != noone){
	sprite_delete(copiedSprite);
}
instance_destroy();