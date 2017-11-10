/// @description 
if(!mouse_check_button(mb_left)){
	grab = false;	
}else{
	if((mouse_x >leftLimit && mouse_x<rightLimit) && (mouse_y > y-sprite_get_height(spr_sliderBar_slider)/2 && mouse_y < y+sprite_get_height(spr_sliderBar_slider)/2)){
		sliderPosition = mouse_x;
		grab = true;
		xx = sliderPosition-mouse_x;
	}
}

if(grab == true){
	if(mouse_x +xx > leftLimit && mouse_x + xx < rightLimit){
		sliderPosition = mouse_x + xx;	
	}else if (mouse_x + xx <= leftLimit){
		sliderPosition = leftLimit;	
	}else if (mouse_x + xx >= rightLimit){
		sliderPosition = rightLimit;	
	}
}

//

if(selected){
	if(gamepad_axis_value(0,gp_axislh)<=-0.7){
		if(sliderPosition >leftLimit){
			sliderPosition-=incrementationSpeed;
			if(alarm[0] ==-1){
				alarm[0] = 15;
			}
		}
	}else if(gamepad_axis_value(0,gp_axislh)>=0.7){
		if(sliderPosition <rightLimit){
			sliderPosition+=incrementationSpeed;;
			if(alarm[0] ==-1){
				alarm[0] = 15;
			}
		}
	}else{
		alarm[0] =-1
	}
}

if(alarm[0] == -1){
	incrementationSpeed = 1;	
}





if(selected == true){
	image_index = 1;
}	else{
	image_index = 0;	
}
percentage = round (((sliderPosition-leftLimit)/(rightLimit - leftLimit))*100)