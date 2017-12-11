/// @description 

draw_self()
draw_set_font (fnt_2_large);
if(selected == true){
	draw_set_color(c_yellow)	
}else{
	draw_set_colour(c_white);
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed(x, y-5,string(width) +" X " + string(height),20,200,1,1,0);
