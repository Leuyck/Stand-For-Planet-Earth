/// @description 
var activeButton = scr_getActivePlayerButton();
	
scr_playerButtonActionsForXbox(activeButton);//for xbox

////action with controller keyboard;
//with(obj_controller){
//	if(self.mainController == true){
//		if(self.controller =="keyboard"){
//			if(other.buttonNumber ==1){
//				if(self.playerNumber == noone){
//					self.playerNumber = other.buttonNumber;
//					other.enable = true;
//					other.gamepadNumber = 0;
//					other.heroSelected = ds_list_find_value(other.availableHero,irandom_range(0,ds_list_size(other.availableHero)-1));
//				}
//			}
//		}
//	}
//}