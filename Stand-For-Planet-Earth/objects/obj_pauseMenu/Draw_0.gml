/// @description 
draw_set_alpha(0.9);
draw_rectangle_color(obj_camera.x-width/2,obj_camera.y-height/2,obj_camera.x+width/2,obj_camera.y+height/2, color,color,color,color,false);
draw_set_alpha(1.0);

draw_set_color(c_white);
draw_line(lineStartX1,lineStartY1,lineStartX1,yLinePosition);