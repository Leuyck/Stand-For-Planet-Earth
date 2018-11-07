/// @description 
if(text!= noone){
	if(glitchEnable){
		draw_set_font(font);
		glitchSurf = scr_checkAndCreateSurface(string_width(text)*2,string_width(text)*2,glitchSurf)
	
		if(copiedSprite== noone){		
			copiedSprite = scr_createTextSpriteFromSurfaceForGlitch(glitchSurf, text)
		}
		if(glitchVisible ==false){
			rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(copiedSprite,5,15);
			scr_decalAndDrawRectanglesForGlitchEffect(copiedSprite,rectangleInitialPosition,15,glitchSurf,color)	
			glitchVisible = true
		}
		
		if(glitchVisible){
			draw_surface_ext(glitchSurf,x-surface_get_width(glitchSurf)/2,y-surface_get_height(glitchSurf)/2,1,1,0,c_white,1)
		}
	}else{
		glitchVisible = false;
		draw_sprite_ext(copiedSprite,0,x,y,1,1,0,color,1);
	}
}