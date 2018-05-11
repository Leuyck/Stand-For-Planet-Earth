/// @description 
var alpha = 1
if(obj_btn_scrollController.selected == false){
	alpha = 0.2	
}
draw_set_alpha(alpha);
var color = make_color_rgb(224,67,72)
draw_set_color(color);
draw_set_font(fnt_2_large);
draw_set_halign(fa_left)

var textX = 300
var textY = 350
var yIncrement = 70;
for(var i =0; i<array_height_2d(keyboardCommands);i++){
	draw_text(textX,textY,keyboardCommands[i,1]+keyboardCommands[i,0]);
	textY+=yIncrement;
}
draw_set_alpha(1);