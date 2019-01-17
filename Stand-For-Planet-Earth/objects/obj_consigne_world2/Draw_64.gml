/// @description 
if(textVisible){
	draw_set_font(fnt_chat)
	draw_set_halign(fa_left)
	draw_text_ext_transformed_color(10,2*display_get_gui_height()/3,currentText,10,200,1,1,0,c_white,c_white,c_white,c_white,1);
}