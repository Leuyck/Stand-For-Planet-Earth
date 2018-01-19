/// @description 
if(text!= noone){
	if(glitchEnable){
		draw_set_font(font);
		glitchSurf = scr_checkAndCreateSurface(string_width(text)*2,string_height(text)*2,glitchSurf)
	
		if(copiedSprite== noone){		
			copiedSprite = scr_createTextSpriteFromSurfaceForGlitch(glitchSurf, text)
		
		}else{
			if(glitchedSprite == noone){
				rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(copiedSprite,5,15);
				scr_decalAndDrawRectanglesForGlitchEffect(copiedSprite,rectangleInitialPosition,15,glitchSurf,color)	
			
				glitchedSprite = sprite_create_from_surface(glitchSurf,0,0,surface_get_width(glitchSurf),surface_get_height(glitchSurf),false,false,surface_get_width(glitchSurf)/2,surface_get_height(glitchSurf)/2);
			}
		}
		if(glitchedSprite!=noone){
			draw_sprite(glitchedSprite,0,x,y);
		}
	}else{
		glitchedSprite = noone;
		draw_sprite_ext(copiedSprite,0,x,y,1,1,0,color,1);
	}
}