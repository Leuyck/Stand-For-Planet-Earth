/// @description 
///create other Controller
if(gamepadNumber == 0){
	mainController = true;	
}else{
	mainController = false;	
}
if(mainController){
	if(instance_number(obj_controller)!=4){
		var gp_num = gamepad_get_device_count();
		for (var i = 1; i < gp_num; i++;)
		{
			if (gamepad_is_connected(i)){
				var instanceExists = false;
				with(obj_controller){
					if(self.gamepadNumber == i){
						instanceExists = true;
					}
				}
				if(instanceExists==false){
					var instance = instance_create_layer(x,y,layer,obj_controller);
					instance.gamepadNumber = i;
					instance.mainController = false;
				}
			}else{
				with(obj_controller){
					if(self.gamepadNumber == i){
						instance_destroy();	
					}
				}
			}
		}
	}
}



gamepad_set_axis_deadzone(gamepadNumber,0.20)

scr_nameControllerBinds()

if(upKBind||downKBind||leftKBind||rightKBind|| mouse_check_button(k_bindFire1)){
	controller = "keyboard"	
}else if(lJoyHValue!=0 ||lJoyVValue!=0||rJoyHValue||rJoyVValue||gamepad_button_check_pressed(gamepadNumber,gp_face1)||gamepad_button_check_pressed(gamepadNumber,gp_face2)){
	controller = "xbox"	
}

///CONTROLER ACTIONS IN MENU
if(mainController){
	if(global.inWorld == false){
		if(instance_exists(obj_btn_parent)/*&&room!=rm_choseHero*/){
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
}