/// @description 
draw_self();
draw_sprite(spr_sliderBar_slider,-1,sliderPosition,y);

//draw the percentage
draw_set_halign(fa_right)
draw_set_font(fnt_2_large)
draw_text_color(x+sprite_width/2+75,y,string(percentage),c_white,c_white,c_white,c_white,1);

//draw role
draw_text_color(x-sprite_width/2-20,y,name,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_left)