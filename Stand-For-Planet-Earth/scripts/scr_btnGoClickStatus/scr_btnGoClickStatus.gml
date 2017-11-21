///scr_btnGoClickStatus();
var click = false;
if(active == true && text =="GO !"){
	with(obj_btn_player){
		if(heroLock == true){
			if(gamepad_button_check_pressed(self.gamepadNumber,gp_face1)){
				other.click = true;	
			}
		}
	}
}
return click;