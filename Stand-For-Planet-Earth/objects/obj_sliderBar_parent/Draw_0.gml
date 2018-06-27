/// @description 
var alpha = 1;
if(!selected){
	alpha = 0.2
}
var color = make_color_rgb(224,67,72)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,color,alpha)	
draw_sprite_ext(spr_sliderBar_slider,image_index,sliderPosition,y,1,1,0,color,alpha);

//draw the percentage
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_set_font(fnt_2_large)
draw_text_color(x+sprite_width/2+75,y,string(percentage),color,color,color,color,alpha);

//draw role
draw_text_color(x-sprite_width/2-20,y,name,color,color,color,color,alpha);
draw_set_halign(fa_left)