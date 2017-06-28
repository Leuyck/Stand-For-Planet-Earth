/// @description Insert description here
// You can write your code in this editor
if( !surface_exists(shadowSurf) ){
    shadowSurf = surface_create(obj_camera.viewWidth+viewMargin,obj_camera.viewHeight+viewMargin);
	surface_set_target(shadowSurf);
	draw_clear_alpha(0, 0);
	surface_reset_target();
} 

surface_set_target(shadowSurf)
draw_set_color(c_black);
draw_set_alpha(shadowDensity)
draw_rectangle(0,0,surface_get_width(shadowSurf),surface_get_height(shadowSurf),false);
draw_set_alpha(1);
surface_reset_target();
draw_surface(shadowSurf,obj_camera.x-surface_get_width(shadowSurf)/2,obj_camera.y - surface_get_height(shadowSurf)/2);