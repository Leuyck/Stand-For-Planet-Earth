/// @description 

///CONTROLER ACTIONS IN MENU
if(global.inWorld == false){
	if(instance_exists(obj_btn_parent)){
		if(alarm[0] == -1){
			if(gamepad_axis_value(0,gp_axislv) >= 0.7){
				buttonSelected = scr_selectButtonWithController("down");
				alarm[0] = other.refreshJoyStickTime
			}else if(gamepad_axis_value(0,gp_axislv) <= -0.7){
				buttonSelected = scr_selectButtonWithController("up");
				alarm[0] = other.refreshJoyStickTime
			}	
		}
		///actualize the status of buttons
		with(obj_btn_parent){
			if(self.id == other.buttonSelected){
				other.x = self.x;
				other.y = self.y;
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