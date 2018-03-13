///scr_createSpriteFromSurfaceForGlitch(glitchSurf, sprite_index,image_index)

var surf = argument[0];
var initSprite = argument[1];
var initImageIndex = argument[2];

surface_set_target(surf);
draw_clear_alpha(0, 0);
draw_sprite_ext(initSprite,initImageIndex,surface_get_width(surf)/2,surface_get_height(surf)/2,1,1,parent.image_angle,c_white,1);
var sprite = sprite_create_from_surface(surf,0,0,surface_get_width(surf),surface_get_height(surf),false,false,surface_get_width(surf)/2,surface_get_height(surf)/2);
draw_clear_alpha(0, 0);
surface_reset_target();
return sprite;
