/// scr_fire2CheckBatBot();
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
		if(actionDefiniedForFire2){
			if(alarm[9] >0){
				if(numberOfBatte >0 && currentEnergy >= energyCostForFire2 && alarm[7] <= 0){
					scr_BatBot_lanchBatte();
					alarm[9] = -1;
				}
			}else if(numberOfBatte == 0 && currentEnergy>=1){
				scr_BatBot_recallBatte();
				alarm[9] = -1;
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

numberOfBatte = clamp(numberOfBatte,0,2);