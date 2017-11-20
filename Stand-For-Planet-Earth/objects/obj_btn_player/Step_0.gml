/// @description 
var activeButton = scr_getActiveButton();


///enable button when A is Pressed for the first time;
if(activeButton == buttonNumber){
	if(enable == false){
		for (var i = 0; i < gamepad_get_device_count(); i++;)
		{
			if(gamepad_button_check_pressed(i,gp_face1)){
				with(obj_controller){
					if(self.gamepadNumber == i && self.playerNumber ==noone){
						self.playerNumber = other.buttonNumber;
						other.enable = true;
						other.gamepadNumber = i;
					}
				}
			}
			
		}
	}		
}
//enable button when A is Pressed after canceled;
if(enable == false){
	if(gamepad_button_check_pressed(gamepadNumber,gp_face1)){
		enable =true;
	}
}

///disable button when B is pressed;
if(enable == true){
	if(gamepad_button_check_pressed(gamepadNumber,gp_face2))
	{
		enable = false;
		//gamepadNumber = -1;

	}
}