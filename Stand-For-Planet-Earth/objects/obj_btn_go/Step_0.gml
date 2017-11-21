
///Update active status
var numberOfButtonEnable = 0;
active = true;

with(obj_btn_player){
	if(self.enable == true){
		if(self.heroLock == false){
			other.active = false;	
		}
		numberOfButtonEnable++;
	}
}
if(numberOfButtonEnable == 0){
	active = false;
}

///update text;
if(active == false){
	text = "Waiting";	
	alarm[0] = -1;
	decompte = false;
}
if (active == true && alarm[0] == -1 && decompte == false && text != "GO !"){
	decompte = true;
	alarm[0] = 1;
}

if(active == true && text =="GO !"){
	with(obj_btn_player){
		if(heroLock == true){
			if(gamepad_button_check_pressed(self.gamepadNumber,gp_face1)){
				other.click = true;	
			}
		}
	}
}
if(click){
	room_goto(rm_option);	
}