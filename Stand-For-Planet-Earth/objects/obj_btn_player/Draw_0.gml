/// @description 

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_2_large);
draw_set_color(c_white)

if(!enable){
	draw_text(x,y,"Press A");
}else{
	draw_text(x,y,object_get_name(heroSelected));
}