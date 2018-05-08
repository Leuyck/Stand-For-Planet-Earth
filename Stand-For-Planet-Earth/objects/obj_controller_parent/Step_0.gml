/// @description 
///create other Controller
if(buttonSelected ==noone){
	if(instance_exists(obj_btn_parent)&&room!=rm_choseHero){
			buttonSelected = scr_selectButtonWithController("down");
	}
}
if(controllerNumber <= 1){
	mainController = true;	
}else{
	mainController = false;	
}

///CONTROLER ACTIONS IN MENU
if(mainController){
	if(global.inWorld == false){
		if(instance_exists(obj_btn_parent)){
			var currentBtnSelected = buttonSelected;
			if(frozeDirection == false){
				if(room == rm_mainMenu){
					if(downBind){
						buttonSelected = scr_selectButtonWithController("down");
					}else if(upBind){
						buttonSelected = scr_selectButtonWithController("up");
					}else if(cancelKey && self.colonnePosition != 1){
						buttonSelected = scr_selectButtonWithController("right");
					}/*else if(validKey && self.colonnePosition !=3){
						buttonSelected = scr_selectButtonWithController("left");
					}*/
				}else{
					if(downBind){
						buttonSelected = scr_selectButtonWithController("down");
					}else if(upBind){
						buttonSelected = scr_selectButtonWithController("up");
					}else if(leftBind){
						buttonSelected = scr_selectButtonWithController("left");
					}else if(rightBind){
						buttonSelected = scr_selectButtonWithController("right");
					}
				}
			}
			if(currentBtnSelected != buttonSelected){
				currentBtnSelected = buttonSelected;
				with(obj_controller_parent){//set same buttonSelected for each mainController
						self.buttonSelected = currentBtnSelected
						self.colonnePosition = other.colonnePosition;
						self.buttonPosition = other.buttonPosition;
				}
			}
					//self.buttonSelected = other.buttonSelected;	
			with(obj_btn_parent){///actualize the status of buttons
				if(self.id == other.buttonSelected){
					//other.x = self.x;
					//other.y = self.y;
					self.selected = true;
					if(other.validKey){
						self.click = true;
					}
					if(other.cancelKey){
						self.cancelClick = true;	
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