///scr_btnGoClickStatus();
var click = false;
if(active == true && text =="GO !"){
	with(obj_btn_player){
		if(heroLock == true){
			with(obj_controller){
				if(self.gamepadNumber == other.gamepadNumber){
					if(self.aKey){
						click = true;	
					}
				}
			}
		}
	}
}
return click;