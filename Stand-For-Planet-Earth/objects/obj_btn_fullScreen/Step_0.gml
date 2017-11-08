event_inherited();

if(fullScreen){
	sprite_index = spr_btn_tikBox_on;	
}else{
	sprite_index = spr_btn_tikBox_off;
}

if(mouse_x>view_get_wport(0)/2-sprite_get_width(spr_btn_fullScreen)/2 && mouse_y>y-sprite_get_height(spr_btn_tikBox_off)/2
	&& mouse_x< x+sprite_get_width(spr_btn_tikBox_off)/2 && mouse_y <y+sprite_get_height(spr_btn_tikBox_off)/2)
{		
image_index =1;	
	if(mouse_check_button_released(mb_left))
	{					
		fullScreen = !fullScreen;	
	}
}
else{
image_index = 0;	
}