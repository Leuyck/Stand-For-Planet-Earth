///scr_setGamepadNumber
gamepadNumber = -1;
for (var i = 0; i < gamepad_get_device_count(); i++;)
{
	var gamepadAvailable = true;
	if (gamepad_is_connected(i)) {
		with(obj_controller){
			if(self.gamepadNumber ==i){
				gamepadAvailable=false;
			}
		}
		if(gamepadAvailable == true){
			gamepadNumber = i;	
			
		}
	}
}
return gamepadNumber;
