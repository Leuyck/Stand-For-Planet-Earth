///scr_btnGoActiveStatus();

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

return active;