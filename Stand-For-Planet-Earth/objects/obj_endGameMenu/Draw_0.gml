/// @description 
if(draw ==true){
draw_set_alpha(0.9);
draw_rectangle_color(obj_camera.x-width/2,obj_camera.y-height/2,obj_camera.x+width/2,obj_camera.y+height/2, color,color,color,color,false);

draw_set_halign(fa_center);
draw_text(obj_camera.x-width/2-obj_camera.x+width/2,obj_camera.y-height/2-obj_camera.y+height/2,"YOU LOSE");
draw_set_halign(fa_left);
draw_set_alpha(1.0);
}