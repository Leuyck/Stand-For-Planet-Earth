/// @description Insert description here
// You can write your code in this editor
if(sprite !=noone){

	sprite_index=sprite;

	draw_self();
	draw_set_font(fnt_4);
	draw_text_ext_transformed_color(x,y-50,"Width = "+string(image_xscale*sprite_width)+" pxl",1,1000,2,2,0,c_red,c_red,c_red,c_red,1);
	draw_text_ext_transformed_color(x,y-20,"Height = "+string(image_yscale*sprite_height)+" pxl",1,1000,2,2,0,c_red,c_red,c_red,c_red,1);
}
