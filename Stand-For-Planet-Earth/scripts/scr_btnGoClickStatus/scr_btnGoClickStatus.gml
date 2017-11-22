///scr_btnGoClickStatus();
var click = false;
if(active == true && text =="GO !"){
	with(obj_btn_player){
		if(self.heroLock == true){
			with(obj_controller_parent){
				if(self.controllerNumber == other.controllerNumber){
					if(self.validKey){
						click = true;	
					}
				}
			}
		}
	}
}
return click;