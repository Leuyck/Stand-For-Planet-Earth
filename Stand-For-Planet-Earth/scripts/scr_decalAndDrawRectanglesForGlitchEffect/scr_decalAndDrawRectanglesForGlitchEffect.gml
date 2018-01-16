//scr_decalAndDrawRectanglesForGlitchEffect(sprite,positionList,decalRange,targetSurf)

var sprite = argument[0];
var positionList = argument[1];
var decalRange = argument[2];
var targetSurf = argument[3];

surface_set_target(targetSurf);
draw_clear_alpha(0, 0);

///Randomize decalage
var decalageList = ds_list_create();
for(var i = 0; i < ds_list_size(positionList)-1; i++){
	ds_list_add(decalageList,irandom_range(-decalRange,decalRange));
}
///draw the color effect
var colorBandSize = 5
for(var i = 0; i < ds_list_size(positionList)-1; i++){
	var topOfSpriteRectangle = ds_list_find_value(positionList,i)
	var botOfSpriteRectangle = ds_list_find_value(positionList,i+1)
	var heightOfSpriteRectangle = botOfSpriteRectangle - topOfSpriteRectangle;
	var xDecalage = ds_list_find_value(decalageList,i);
	var xPosition = 0+xDecalage
	var yPosition = 0+topOfSpriteRectangle
		
	draw_sprite_general(sprite,0,0,topOfSpriteRectangle,sprite_get_width(sprite),colorBandSize,xPosition,yPosition-colorBandSize,1,1,0,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,0.8);
	draw_sprite_general(sprite,0,sprite_get_width(sprite)/2,topOfSpriteRectangle,sprite_get_width(sprite),heightOfSpriteRectangle,xPosition+sprite_get_width(sprite)/2+colorBandSize,yPosition,1,1,0,c_aqua,c_aqua,c_aqua,c_aqua,1);
}
///draw the sprite
for(var i = 0; i < ds_list_size(positionList)-1; i++){
	var topOfSpriteRectangle = ds_list_find_value(positionList,i)
	var botOfSpriteRectangle = ds_list_find_value(positionList,i+1)
	var heightOfSpriteRectangle = botOfSpriteRectangle - topOfSpriteRectangle;
	var xDecalage = ds_list_find_value(decalageList,i);
	var xPosition = 0+xDecalage
	var yPosition = 0+topOfSpriteRectangle
		
	draw_sprite_general(sprite,0,0,topOfSpriteRectangle,sprite_get_width(sprite),heightOfSpriteRectangle,xPosition,yPosition,1,1,0,c_white,c_white,c_white,c_white,1);
}

ds_list_destroy(decalageList);
surface_reset_target();