/// @description 
with(controller){
	if(self.frozeDirection == false){
		if(self.downBind){
			other.btnCurrentlySelected++
		}else if(self.upBind){
			other.btnCurrentlySelected--
		}
		if(other.btnCurrentlySelected<1){
			other.btnCurrentlySelected = instance_number(obj_btn_parent);	
		}else if(other.btnCurrentlySelected>instance_number(obj_btn_parent)){
			other.btnCurrentlySelected=1;
		}
	}
}
if(controller.object_index == obj_controller_keyboard){
	if(position_meeting(mouse_x,mouse_y,btnResume)){
		btnCurrentlySelected = btnResume.buttonNumber;
	}else if(position_meeting(mouse_x,mouse_y,btnExit)){
		btnCurrentlySelected = btnExit.buttonNumber;
	}
}

with(obj_btn_parent){///set  the selected button in pausemenu
	if(other.btnCurrentlySelected == self.buttonNumber){
		var buttonSelected = self.id;
		self.selected = true;
		with(obj_controller_parent){
			self.buttonSelected = buttonSelected;
		}
		if(other.controller.validKey){
			self.click = true;
		}
	}else{
		self.selected = false;	
	}
}