/// @description 

// Inherit the parent event
event_inherited();

var xText = x+lengthdir_x(40,image_angle-45)
var yText =  y+lengthdir_y(40,image_angle-45)
draw_set_font(fnt_3_large);

if(alerteMessage==2){
	scr_drawTextWithOutline(xText,yText,"Press Use",c_yellow,c_black,1,alphaMessage);
}else if(alerteMessage == 1){
	if(cardToOpen=obj_card_purple){
		var text="No purple card";
		scr_drawTextWithOutline(xText,yText,text,c_purple,c_black,1,alphaMessage);
	}else if(cardToOpen=obj_card_green){
		var text="No green card";
		scr_drawTextWithOutline(xText,yText,text,c_green,c_black,1,alphaMessage);
	}
}