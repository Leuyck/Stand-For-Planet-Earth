/// @description 
var activeButton = scr_getActivePlayerButton();
///enable button when A is Pressed for the first time;
if(activeButton == buttonNumber){
	if(enable == false){
		for (var i = 0; i < gamepad_get_device_count(); i++;)
		{
			if(gamepad_button_check_released(i,gp_face1)){
				with(obj_controller){
					if(self.gamepadNumber == i && self.playerNumber ==noone){
						self.playerNumber = other.buttonNumber;
						other.enable = true;
						other.gamepadNumber = i;
						other.heroSelected = ds_list_find_value(other.availableHero,irandom_range(0,ds_list_size(other.availableHero)-1));
					}
				}
			}
		}
	}		
}
//enable button when A is Pressed after canceled;
if(enable == false){
	if(gamepad_button_check_released(gamepadNumber,gp_face1)){
		enable =true;
		heroSelected = ds_list_find_value(other.availableHero,irandom_range(0,ds_list_size(other.availableHero)-1));
	}
}


if(enable == true){
	with(obj_controller){
		if(self.gamepadNumber == other.gamepadNumber){
			if(other.heroLock == false){
		
				if(self.bKey)///disable button when B is pressed;
				{
					other.enable = false;
				}
				if(self.aKey)///lock Hero when A is pressed;
				{
					other.heroLock = true;
				}
				if(self.leftLBind && other.alarm[0] <=0){///when L goes right
					var currentHeroNumber = ds_list_find_index(other.availableHero,other.heroSelected)-1
					if(currentHeroNumber < 0) then currentHeroNumber = 3;
					other.heroSelected = ds_list_find_value(other.availableHero,currentHeroNumber)
					other.alarm[0] = self.refreshJoyStickTime;
				}
				if(self.rightLBind && other.alarm[0] <=0){///when L goes Left
					var currentHeroNumber = ds_list_find_index(other.availableHero,other.heroSelected)+1
					if(currentHeroNumber >3) then currentHeroNumber = 1;
					other.heroSelected = ds_list_find_value(other.availableHero,currentHeroNumber)
					other.alarm[0] = self.refreshJoyStickTime;
				}
			}else{
				if(self.bKey)///disable lock hero when B is pressed;
				{
					other.heroLock = false;
				}
			}
		}
	}
}