/// @description 
var myId = id
var myColonne = colonne;
var myPosition = position;
with(obj_btn_go){
	if(self.lockedRoom ==noone){
		with(obj_controller_parent){
			if(self.mainController){
				self.buttonSelected = myId;
				self.colonnePosition = myColonne;
				self.buttonPosition = myPosition;
			}
		}
	}
}