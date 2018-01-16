/// @description 
if(parent!= noone){
	glitchSurf = scr_checkAndCreateSurface(sprite_get_width(parent.sprite_index)*2,sprite_get_height(parent.sprite_index)*2,glitchSurf)
	
	if(copiedSprite== noone){
		copiedSprite = scr_createSpriteFromSurfaceForGlitch(glitchSurf, parent.sprite_index, parent.image_index)
	}else{
		if(glitchedSprite == noone){
			rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(copiedSprite,2,30);
			scr_decalAndDrawRectanglesForGlitchEffect(copiedSprite,rectangleInitialPosition,20,glitchSurf)	
			
			glitchedSprite = sprite_create_from_surface(glitchSurf,0,0,surface_get_width(glitchSurf),surface_get_height(glitchSurf),false,false,surface_get_width(glitchSurf)/2,surface_get_height(glitchSurf)/2);
		}
	}
	if(glitchedSprite!=noone){
		draw_sprite(glitchedSprite,0,x,y);
	}
}