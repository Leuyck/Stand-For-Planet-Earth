/// @description 
if(selected){
	draw_set_color(c_yellow)
	
}else{
	draw_set_colour(c_white)
}

draw_self();
draw_sprite(spr_sliderBar_slider,image_index,sliderPosition,y);

//draw the percentage
draw_set_halign(fa_right)
draw_set_font(fnt_2_large)
draw_text(x+sprite_width/2+75,y,string(percentage));

//draw role
draw_text(x-sprite_width/2-20,y,name);
draw_set_halign(fa_left)