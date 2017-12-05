///scr_btnGoActiveStatus();
if(toChose == "character"){
	var numberOfButtonEnable = 0;
	var active = true;
	with(obj_btn_player){
		if(self.enable == true){
			if(self.heroLock == false){
				active = false;	
			}
			numberOfButtonEnable++;
		}
	}
	if(numberOfButtonEnable == 0){
		active = false;
	}
}else if(toChose =="room"){
	var active = true;
	if(lockedRoom == noone){
		active = false;	
	}
}

return active;