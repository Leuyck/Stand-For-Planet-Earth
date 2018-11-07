/// @description 
if(parent!= noone){
	glitchSurf = scr_checkAndCreateSurface(sprite_get_width(spriteToGlitch)*2*xscale,sprite_get_height(spriteToGlitch)*2*yscale,glitchSurf)
	
	if(copiedSprite== noone){
		copiedSprite = scr_createSpriteFromSurfaceForGlitch(glitchSurf, spriteToGlitch, parent.image_index,imageBlend)
	}
	if(glitchVisible == false){
		rectangleInitialPosition = scr_calculRectanglesForGlitchEffect(copiedSprite,minHeightRectangle,maxHeightRectangle);
		scr_decalAndDrawRectanglesForGlitchEffect(copiedSprite,rectangleInitialPosition,20,glitchSurf,c_white)	
			
		glitchVisible = true
	}
	
	if(glitchVisible){
		draw_surface_ext(glitchSurf,x-surface_get_width(glitchSurf)/2,y-surface_get_height(glitchSurf)/2,1,1,0,c_white,1)
		parent.visible = false;
	}
}