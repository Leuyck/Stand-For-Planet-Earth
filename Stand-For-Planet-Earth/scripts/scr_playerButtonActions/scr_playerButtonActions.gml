///scr_playerButtonActions(currentActiveButton)
var activeButton = argument[0];

///enable button when A is Pressed for the first time;
	
if(enable == false && alarm[0]<0){
	if(activeButton == buttonNumber && alarm[0]<0){///PRESS A FOR THE FIRST TIME
		with(obj_controller_parent){
			if(self.playerNumber ==noone){
				if((self.validKey || self.startKey)){
					self.playerNumber = other.buttonNumber;
					other.enable = true;
					other.controller = self.id;
					other.heroSelected = ds_list_find_value(other.availableHero,irandom_range(0,ds_list_size(other.availableHero)-1));
					exit;
				}
			}
		}	
	}
}
var numberOfHeroes = ds_list_size(availableHero);
if(enable == true){///BUTTON IS ACTIVE
	with(controller){
		if(other.heroLock == false){
			if(self.cancelKey)///disable button when B is pressed;
			{
				other.enable = false;
				self.playerNumber = noone;
				exit;
			}
			if(self.validKey && other.alarm[0] <0)///lock Hero when A is pressed;
			{
				other.heroLock = true;
				exit;
			}
			if(self.leftBind){///when L goes left
				var currentHeroNumber = ds_list_find_index(other.availableHero,other.heroSelected)-1
				if(currentHeroNumber < 0) then currentHeroNumber = numberOfHeroes-1;
				other.heroSelected = ds_list_find_value(other.availableHero,currentHeroNumber)
				exit;
			}
			if(self.rightBind){///when L goes right
				var currentHeroNumber = ds_list_find_index(other.availableHero,other.heroSelected)+1
				if(currentHeroNumber >numberOfHeroes-1) then currentHeroNumber = 0;
				other.heroSelected = ds_list_find_value(other.availableHero,currentHeroNumber)
				exit;
			}
		}else{
			if(self.cancelKey)///disable lock hero when B is pressed;
			{
				other.heroLock = false;
				exit;
			}
		}
	}
}