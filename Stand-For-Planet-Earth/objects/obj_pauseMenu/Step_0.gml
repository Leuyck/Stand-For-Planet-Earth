// @description 
var scale = obj_camera.viewWidth * (1/obj_camera.baseViewWidth);
btnResume.image_xscale = scale;
btnResume.image_yscale = scale;
btnExit.image_xscale = scale;
btnExit.image_yscale = scale;

if(instance_exists(obj_btn_resume)){
	with(obj_controller_parent){
		if(self.mainController){
			var currentBtnSelected = self.buttonSelected;
			if(self.downBind){
				self.buttonSelected = scr_selectButtonWithController("down");
			}else if(self.upBind){
				self.buttonSelected = scr_selectButtonWithController("up");
			}
		
			if(currentBtnSelected != buttonSelected){
				currentBtnSelected = buttonSelected;
				with(obj_controller_parent){//set same buttonSelected for each mainController
					if(self.mainController){
						self.buttonSelected = currentBtnSelected
						self.colonnePosition = other.colonnePosition;
						self.buttonPosition = other.buttonPosition;
					}
				}
			}	
			with(obj_btn_parent){///actualize the status of buttons
				if(self.id == other.buttonSelected){
					self.selected = true;
					if(other.validKey){
						self.click = true;
					}else if(other.cancelKey){
						instance_destroy(obj_pauseMenu);	
					}
				}else{
					self.selected = false;	
				}
			}
		}
	}
}