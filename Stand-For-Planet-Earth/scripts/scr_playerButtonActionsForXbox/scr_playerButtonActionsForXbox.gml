///scr_playerButtonActionsForXbox(currentActiveButton)
var activeButton = argument[0];

///enable button when A is Pressed for the first time;
	
if(enable == false && alarm[1]<=0){
	if(activeButton == buttonNumber){///PRESS A FOR THE FIRST TIME
		for (var i = 0; i < gamepad_get_device_count(); i++;)
		{
			if(gamepad_button_check_pressed(i,gp_face1)||gamepad_button_check_pressed(i,gp_start)){
				with(obj_controller){
					if(self.gamepadNumber == i && self.playerNumber ==noone && self.controller =="xbox"){
						self.playerNumber = other.buttonNumber;
						other.enable = true;
						other.gamepadNumber = i;
						other.heroSelected = ds_list_find_value(other.availableHero,irandom_range(0,ds_list_size(other.availableHero)-1));
						other.alarm[1] = other.refreshButtonTime;
					}
				}
			}
		}
	}else{///PRESS A AFTER CANCELING
		if(gamepad_button_check_pressed(gamepadNumber,gp_face1)||gamepad_button_check_pressed(gamepadNumber,gp_start)){
			enable =true;
			heroSelected = ds_list_find_value(other.availableHero,irandom_range(0,ds_list_size(other.availableHero)-1));
			with(obj_controller){
				if(self.gamepadNumber == other.gamepadNumber && self.controller = "xbox"){
					self.playerNumber = other.buttonNumber;
					other.alarm[1] = other.refreshButtonTime;
				}
			}
		}	
	}
}

if(enable == true){///BUTTON IS ACTIVE
	with(obj_controller){
		if(self.gamepadNumber == other.gamepadNumber && self.controller=="xbox"){
			if(other.heroLock == false){
		
				if(self.bKey && other.alarm[1] <=0)///disable button when B is pressed;
				{
					other.enable = false;
					self.playerNumber = noone;
					other.alarm[1] = other.refreshButtonTime;
				}
				if(self.aKey && other.alarm[1] <=0)///lock Hero when A is pressed;
				{
					other.heroLock = true;
					other.alarm[1] = other.refreshButtonTime;
				}
				if(self.leftLBind && other.alarm[0] <=0){///when L goes right
					var currentHeroNumber = ds_list_find_index(other.availableHero,other.heroSelected)-1
					if(currentHeroNumber < 0) then currentHeroNumber = 3;
					other.heroSelected = ds_list_find_value(other.availableHero,currentHeroNumber)
					other.alarm[0] = other.refreshButtonTime;
				}
				if(self.rightLBind && other.alarm[0] <=0){///when L goes Left
					var currentHeroNumber = ds_list_find_index(other.availableHero,other.heroSelected)+1
					if(currentHeroNumber >3) then currentHeroNumber = 1;
					other.heroSelected = ds_list_find_value(other.availableHero,currentHeroNumber)
					other.alarm[0] = other.refreshButtonTime;
				}
			}else{
				if(self.bKey && other.alarm[1] <=0)///disable lock hero when B is pressed;
				{
					other.heroLock = false;
					other.alarm[1] = other.refreshButtonTime;
				}
			}
		}
	}
}