/// @description 
if(text!= noone){
	draw_set_font(font);
	glitchTextSurf = scr_checkAndCreateSurface(string_width(text)*2,string_width(text)*2,glitchTextSurf)
	
	if(copiedSprite== noone){		
		copiedSprite = scr_createTextSpriteFromSurfaceForGlitch(glitchTextSurf, text)
	}
	
	if(glitchEnable){
		if(copiedSprite !=noone){
			if(glitchedSprite == noone){
				rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(copiedSprite,5,15);
				scr_decalAndDrawRectanglesForGlitchEffect(copiedSprite,rectangleInitialPosition,15,glitchTextSurf,color)	
			
				glitchedSprite = sprite_create_from_surface(glitchTextSurf,0,0,surface_get_width(glitchTextSurf),surface_get_height(glitchTextSurf),false,false,surface_get_width(glitchTextSurf)/2,surface_get_height(glitchTextSurf)/2);
			}
		}
		if(glitchedSprite!=noone){
			draw_sprite(glitchedSprite,0,x,y);
		}
	}else{
		sprite_delete(glitchedSprite);
		glitchedSprite = noone;
		draw_sprite_ext(copiedSprite,0,x,y,1,1,0,color,1);
	}
}