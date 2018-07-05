/// @description 
var color = make_color_rgb(224,67,72)
if(active == false) then color = c_gray;	

var scale= 1

if(alarm[1] > -1){
	scale =alarm[1] +1;
}
//draw_sprite_ext(spr_btn_textBox,-1,x,y,1,1,0,color,alpha);
draw_set_color(color); 
draw_set_alpha(alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_2_large);
draw_text_transformed_color(x,y,text,scale,scale,0,color,color,color,color,alpha);
draw_set_alpha(1);