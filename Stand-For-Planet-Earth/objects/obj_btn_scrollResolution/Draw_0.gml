/// @description 
var alpha = 1;
if(!selected){
	alpha = 0.2
}
var color = make_color_rgb(224,67,72)
if(locked){
	color = c_orange;
}
draw_set_font (fnt_2_large);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed_color(x, y-5,string(width) +" X " + string(height),20,200,1,1,0,color,color,color,color,alpha);
