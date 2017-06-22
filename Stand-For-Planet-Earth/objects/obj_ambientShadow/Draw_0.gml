/// @description Insert description here
// You can write your code in this editor

if( !surface_exists(shadowSurf) ){
    shadowSurf = surface_create(4069,4096);
} 

surface_set_target(shadowSurf)
draw_set_color(c_black);
draw_set_alpha(shadowDensity)
draw_rectangle(0,0,4069,4096,false);
draw_set_alpha(1);
surface_reset_target();
draw_surface(shadowSurf,0,0);