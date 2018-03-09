///scr_createTextSpriteFromSurfaceForGlitch((surf, parent.sprite_index, parent.image_index)

var surf = argument[0]
var text = argument[1]

surface_set_target(surf);
draw_clear_alpha(0, 0);
draw_set_halign(fa_center)
draw_set_valign(fa_middle);
if(outline){
	for(var i = -outlineSize;i<=outlineSize;i+=outlineSize){
		draw_text_color(surface_get_width(surf)/2+i,surface_get_height(surf)/2+i,text,outlineColor,outlineColor,outlineColor,outlineColor,1)
		draw_text_color(surface_get_width(surf)/2+i,surface_get_height(surf)/2-i,text,outlineColor,outlineColor,outlineColor,outlineColor,1)
	}
	draw_text_color(surface_get_width(surf)/2,surface_get_height(surf)/2,text,c_white,c_white,c_white,c_white,1)
	
}else{
	draw_text_color(surface_get_width(surf)/2,surface_get_height(surf)/2, text,c_white,c_white,c_white,c_white,1);
}
var sprite = sprite_create_from_surface(surf,0,0,surface_get_width(surf),surface_get_height(surf),false,false,surface_get_width(surf)/2,surface_get_height(surf)/2);
draw_clear_alpha(0, 0);
surface_reset_target();
return sprite;


