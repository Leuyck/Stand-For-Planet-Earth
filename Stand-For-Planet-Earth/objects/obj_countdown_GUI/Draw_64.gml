/// @description 
draw_set_valign(fa_bottom);
draw_set_color(color);
xx = display_get_gui_width() / 2;
yy = display_get_gui_height()/8;

draw_set_font(fnt_2_large);
draw_set_halign(fa_center);
draw_text(xx,yy,message)

xx+=string_width(message)/2 - 75;
yy+= 80;

var unityCountdownString = string(timeRemaining div room_speed);
var decimalCountdownString = string(timeRemaining mod room_speed);

draw_set_halign(fa_right);
draw_set_font(fnt_2_XXL);
draw_text_transformed(xx,yy,unityCountdownString,1,1,0);

draw_set_halign(fa_left);
draw_set_font(fnt_2_large);
draw_text_transformed(xx,yy," : " +decimalCountdownString,1,1,0);