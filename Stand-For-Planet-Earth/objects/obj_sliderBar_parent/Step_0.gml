/// @description 

//with mouse
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

//with controller

if(selected){
	with(obj_controller_parent){
		if(mainController){
			if((self.object_index == obj_controller_xbox && self.leftLBind) ||(self.object_index == obj_controller_keyboard && self.leftKBind)){
				if(other.sliderPosition >=other.leftLimit+other.incrementationSpeed){
					other.sliderPosition-=other.incrementationSpeed;
					if(other.alarm[0] ==-1){
						other.alarm[0] = 15;
					}
				}	
			}else if((self.object_index == obj_controller_xbox && self.rightLBind) ||(self.object_index == obj_controller_keyboard && self.rightKBind)){
				if(other.sliderPosition <=other.rightLimit-other.incrementationSpeed){
					other.sliderPosition+=other.incrementationSpeed;;
					if(other.alarm[0] ==-1){
						other.alarm[0] = 15;
					}
				}
			}
		}
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