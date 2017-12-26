/// @description 
if(glitchEnable){
	var sprite = noone;
	glitchSurf = scr_checkAndCreateSurface(sprite_width*2,sprite_height*2,glitchSurf)
	surface_set_target(glitchSurf);

	sprite = scr_createSpriteFromSurfaceForGlitch(glitchSurf, sprite_index,0)

	if(!defined){
		rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(sprite,2,30);
		defined = true;
	}

	draw_clear_alpha(0,0);
	if(defined){
		scr_decalAndDrawRectanglesForGlitchEffect(sprite,rectangleInitialPosition,20,glitchSurf)
	}
	surface_reset_target();
	surface_reset_target();

	if(surface_exists(glitchSurf)){
		draw_surface_ext(glitchSurf,x-surface_get_width(glitchSurf)/2,y-surface_get_height(glitchSurf)/2,1,1,0,c_white,1);
	}
}
