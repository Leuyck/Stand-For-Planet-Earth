/// @description 


	
if(copiedSprite== noone){
	copiedSurf =  scr_checkAndCreateSurface(surface_get_width(application_surface),surface_get_height(application_surface),copiedSurf)
	surface_set_target(copiedSurf)
	draw_surface(application_surface,0,0)
	//gpu_set_blendmode(bm_subtract)
	//draw_circle_color(surface_get_width(copiedSurf)/2, surface_get_height(copiedSurf)/2,400,c_black,c_black,false)
	//gpu_set_blendmode(bm_normal)
	surface_reset_target();
	copiedSprite = sprite_create_from_surface(copiedSurf,0,0,surface_get_width(copiedSurf),surface_get_height(copiedSurf),false,false,surface_get_width(copiedSurf)/2,surface_get_height(copiedSurf)/2);
	surface_free(copiedSurf);
}
if(glitchedSprite == noone){
	rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(copiedSprite,20,50);
	glitchSurf = scr_checkAndCreateSurface(sprite_get_width(copiedSprite),sprite_get_height(copiedSprite),glitchSurf)
	scr_decalAndDrawRectanglesForGlitchEffect(copiedSprite,rectangleInitialPosition,50,glitchSurf)	
	glitchedSprite = true
}

if(glitchedSprite!=noone){
	var scale = 1920/display_get_gui_width()
	draw_surface_ext(glitchSurf,x,y,scale,scale,0,c_white,1);
}
