/// @description 
var alpha = 1;
if(!selected){
	alpha = 0.2
}
var color = make_color_rgb(224,67,72)
var onoff = "ON";
if(!fullScreen) then onoff = "OFF";
draw_set_font(fnt_2_large);
draw_set_halign(fa_left)
draw_text_color(x-130,y,"Fullscreen : "+onoff,color,color,color,color,alpha);