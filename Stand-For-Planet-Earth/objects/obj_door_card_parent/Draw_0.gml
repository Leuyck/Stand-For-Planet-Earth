/// @description 

// Inherit the parent event
event_inherited();

if(alerteMessage){
	var xText = x+lengthdir_x(40,image_angle-45)
	var yText =  y+lengthdir_y(40,image_angle-45)

	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(fnt_2_large);
	if(cardToOpen=obj_card_purple){
		draw_text_color(xText,yText,"No purple card",c_purple,c_purple,c_purple,c_purple,alphaMessage)
	}else if(cardToOpen=obj_card_green){
		draw_text_color(xText,yText,"No green card",c_green,c_green,c_green,c_green,alphaMessage)
	}

}