/// @description 

///CONTROLER ACTIONS IN MENU
if(global.inWorld == false){
	if(instance_exists(obj_btn_parent)){
		var numberOfButton = instance_number(obj_btn_parent)
		
		//set the selecting movement
		if(alarm[0] == -1){
			if(gamepad_axis_value(0,gp_axislv) >= 0.7){
				if(buttonSelected <numberOfButton)
				buttonSelected++;	
				else{
					buttonSelected =1;
				}
				alarm[0] = refreshJoyStickTime
			}else if(gamepad_axis_value(0,gp_axislv) <=-0.7){
				if(buttonSelected >1)
				buttonSelected--;	
				else{
					buttonSelected =numberOfButton;
				}
				alarm[0] = refreshJoyStickTime
			}
		}
		with(obj_btn_parent){
			if(other.buttonSelected == self.number){
				self.selected = true;
				if(gamepad_button_check_pressed(0,gp_face1)){
					self.click = true;
				}
			}else{
				self.selected = false;	
			}
		}	
	}
}