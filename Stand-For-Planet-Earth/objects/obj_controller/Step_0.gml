/// @description 
gamepad_set_axis_deadzone(0,0.20)

scr_nameControllerBinds()
if(upKBind||downKBind||leftKBind||rightKBind){
	controller = "keyboard"	
}else if(lJoyHValue!=0 ||lJoyVValue!=0||rJoyHValue||rJoyVValue){
	controller = "xbox"	
}

///CONTROLER ACTIONS IN MENU
if(global.inWorld == false){
	if(instance_exists(obj_btn_parent)){
		if((downLBind && alarm[0] == -1)|| downKBind){
			keyboard_clear(vk_down);
			keyboard_clear(ord("S"));
			buttonSelected = scr_selectButtonWithController("down");
			alarm[0] = refreshJoyStickTime;
		}else if((upLBind && alarm[0] == -1)|| upKBind){
			keyboard_clear(vk_up);
			keyboard_clear(ord("Z"));
			buttonSelected = scr_selectButtonWithController("up");
			alarm[0] = refreshJoyStickTime;
		}	
		///actualize the status of buttons
		with(obj_btn_parent){
			if(self.id == other.buttonSelected){
				other.x = self.x;
				other.y = self.y;
				self.selected = true;
				if(other.aKey){
					self.click = true;
				}
			}else{
				self.selected = false;	
			}
		}
	}
}