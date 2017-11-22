/// @description 
///create other Controller
if(controllerNumber <= 1){
	mainController = true;	
}else{
	mainController = false;	
}

///CONTROLER ACTIONS IN MENU
if(mainController){
	if(global.inWorld == false){
		if(instance_exists(obj_btn_parent)){
			if(downBind){
				buttonSelected = scr_selectButtonWithController("down");
			}else if(upBind){
				buttonSelected = scr_selectButtonWithController("up");
			}	
			with(obj_controller_parent){//set same buttonSelected for each mainController
				self.buttonSelected = other.buttonSelected;	
			}
			///actualize the status of buttons
			with(obj_btn_parent){
				if(self.id == other.buttonSelected){
					other.x = self.x;
					other.y = self.y;
					self.selected = true;
					if(other.validKey){
						self.click = true;
					}
				}else{
					self.selected = false;	
				}
			}
		}
	}
}

switch playerNumber{
	case 1 :
		color = c_blue;
		break;
	case 2 :
		color = c_red;
		break;
	case 3 :
		color = c_green;
		break;
	case 4 :
		color = c_yellow;
		break;
	default :
		color = c_white;
		break;
}