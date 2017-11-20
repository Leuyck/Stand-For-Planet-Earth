/// @description 

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_2_large);
draw_set_color(c_white)
draw_text(x,y-20,+string(gamepadNumber)+"........." + string(instance_number(obj_controller)));

if(!enable){
	draw_text(x,y,"Press A");
}else{
	draw_text(x,y,string(buttonNumber));
}