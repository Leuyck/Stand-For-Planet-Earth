/// @description 
if(parent!= noone){
	glitchSurf = scr_checkAndCreateSurface(sprite_get_width(spriteToGlitch)*2*xscale,sprite_get_height(spriteToGlitch)*2*yscale,glitchSurf)
	
	if(copiedSprite== noone){
		copiedSprite = scr_createSpriteFromSurfaceForGlitch(glitchSurf, spriteToGlitch, parent.image_index,imageBlend)
	}
	if(copiedSprite != noone){
		if(glitchedSprite == noone){
			rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(copiedSprite,minHeightRectangle,maxHeightRectangle);
			scr_decalAndDrawRectanglesForGlitchEffect(copiedSprite,rectangleInitialPosition,20,glitchSurf,c_white)	
			
			glitchedSprite = sprite_create_from_surface(glitchSurf,0,0,surface_get_width(glitchSurf),surface_get_height(glitchSurf),false,false,surface_get_width(glitchSurf)/2,surface_get_height(glitchSurf)/2);
		}
	}
	if(glitchedSprite!=noone){
		draw_sprite_ext(glitchedSprite,0,x,y,1,1,0,c_white,1);
		parent.visible = false;
	}
}