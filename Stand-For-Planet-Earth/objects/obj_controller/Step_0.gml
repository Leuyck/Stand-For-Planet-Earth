/// @description 

scr_nameControllerBinds()

///CONTROLER ACTIONS IN MENU
if(global.inWorld == false){
	if(instance_exists(obj_btn_parent)){
		if((downLBind && alarm[0] == -1)|| downKBind){
			buttonSelected = scr_selectButtonWithController("down");
			alarm[0] = refreshJoyStickTime;
		}else if((upLBind && alarm[0] == -1)|| upKBind){
			buttonSelected = scr_selectButtonWithController("up");
			alarm[0] = refreshJoyStickTime;
		}	
		///actualize the status of buttons
		with(obj_btn_parent){
			if(self.id == other.buttonSelected){
				other.x = self.x;
				other.y = self.y;
				self.selected = true;
				if(other.aBind){
					self.click = true;
				}
			}else{
				self.selected = false;	
			}
		}
	}
}