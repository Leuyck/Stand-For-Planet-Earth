/// scr_fire2CheckBatBot();
numberOfBatte = 2-instance_number(obj_bullet_batte_parent);

if(currentEnergy >=4 && currentEnergy <7){
	energyCostForFire2 = 2;	
}else if(currentEnergy>=7 && currentEnergy<10){
	energyCostForFire2 = 3;	
}else if(currentEnergy >=10){
	energyCostForFire2 = 4;	
}else{
	energyCostForFire2 = 1;
}

if(state!="dead" && deployed){
	if(fire2){
		if(alarm[9] ==-1 && actionDefiniedForFire2 == false){
			alarm[9] =15;	
			actionDefiniedForFire2 = true;
			state="standing"
		}
	}else{
		if(alarm[9] !=-1){
			alarm[9] = -1;
			if(numberOfBatte != 0 && currentEnergy >= energyCostForFire2 && alarm[7] <= 0){
				var batteType = scr_getBatteTypeForFire2();
				var bulletLevel =energyCostForFire2;
				for (var i = 0; i < 1; i++) {
				    scr_createAndSendNewBulletBatBot(id, batteType, "hero",bulletLevel)
				} 
				alarm[7] = room_speed/shot2PerSec;
				state = "firing2"
				image_index = 0;
				currentEnergy -= energyCostForFire2;
				if(ds_list_size(linkedHeros)==0){
					pauseEnergyRegen = true;
				}
			}else if(numberOfBatte == 0 && currentEnergy>=1){
				var batteIsReturning = false;
				with(obj_bullet_batte_parent){
					if(self.returnToBatBot == false){
						self.returnToBatBot = true;		
						batteIsReturning = true;
					}
				}	
				if(batteIsReturning){
					currentEnergy -=1;
					if(ds_list_size(linkedHeros)==0){
						pauseEnergyRegen = true;
					}
				}
				scr_createReturningBatteParticules();
			}
		}
		actionDefiniedForFire2 = false;
	}
}

if(state=="firing2"){
    if(!fire2){
        if(image_index < image_number-1){
            state="firing2";
        }else{
            state="standing"
        }
    }
}

