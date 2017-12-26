//scr_decalAndDrawRectanglesForGlitchEffect(sprite,positionList,decalRange,targetSurf)

var sprite = argument[0];
var positionList = argument[1];
var decalRange = argument[2];
var targetSurf = argument[3];

for(var i = 0; i < ds_list_size(positionList)-1; i++){
	var topOfSpriteRectangle = ds_list_find_value(positionList,i)
	var botOfSpriteRectangle = ds_list_find_value(positionList,i+1)
	var heightOfSpriteRectangle = botOfSpriteRectangle - topOfSpriteRectangle;
	var xDecalage = irandom_range(-decalRange,decalRange);
	var xPosition = 0+xDecalage
	var yPosition = 0+topOfSpriteRectangle
		
	surface_set_target(targetSurf);
	draw_sprite_general(sprite,0,0,topOfSpriteRectangle,sprite_get_width(sprite),heightOfSpriteRectangle,xPosition,yPosition,1,1,0,c_white,c_white,c_white,c_white,1);
	surface_reset_target();
}