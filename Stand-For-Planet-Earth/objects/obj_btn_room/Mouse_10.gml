/// @description 
var myId = id
with(obj_btn_go){
	if(self.lockedRoom ==noone){
		with(obj_controller_parent){
			if(self.mainController){
				self.buttonSelected = myId;
			}
		}
	}
}