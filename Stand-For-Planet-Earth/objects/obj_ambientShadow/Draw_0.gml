/// @description Insert description here
// You can write your code in this editor
if( !surface_exists(shadowSurf) ){
    shadowSurf = surface_create(15000,15000);
	surface_set_target(shadowSurf);
	draw_clear_alpha(0, 0);
	surface_reset_target();
} 

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0])

surface_set_target(shadowSurf)
draw_set_color(c_black);
draw_set_alpha(shadowDensity)
draw_rectangle(obj_camera.x-1920/1.5,obj_camera.y-1080/1.5,obj_camera.x+1920/1.5,obj_camera.y+1080/1.5,false);
draw_set_alpha(1);
surface_reset_target();
draw_surface(shadowSurf,0,0);