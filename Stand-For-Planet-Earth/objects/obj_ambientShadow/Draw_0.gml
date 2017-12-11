/// @description Insert description here
// You can write your code in this editor
if( !surface_exists(shadowSurf) ){
    shadowSurf = surface_create(1,1);
	surface_set_target(shadowSurf);
	draw_clear_alpha(0, 0);
	surface_reset_target();
} 

surface_set_target(shadowSurf)
draw_set_color(c_black);
draw_set_alpha(shadowDensity)
draw_rectangle(0,0,1,1,false);
draw_set_alpha(1);
surface_reset_target();

var width = 1920;
var height = 1080;
var hScale = 1920 + viewMargin
var vScale = 1080 + viewMargin;
var xPos = obj_camera.x - hScale/2;
var yPos = obj_camera.y - vScale/2;

draw_surface_ext(shadowSurf,xPos, yPos,hScale,vScale,0,image_blend,1);