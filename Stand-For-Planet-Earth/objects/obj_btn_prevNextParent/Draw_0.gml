/// @description 
var alpha = 1;
if(instance_exists(parent) && !parent.selected){
	alpha = 0.2
}
var color = make_color_rgb(224,67,72)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,color,alpha);