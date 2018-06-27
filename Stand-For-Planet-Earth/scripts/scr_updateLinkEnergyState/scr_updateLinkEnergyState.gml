/// scr_updateLinkEnergyState()
       
if(linkTarget != noone){ 
	if(currentEnergy>=1){
		if(alarm[4] == -1){
			alarm[4] = timePerEnergyTic;
		}	
	}else{
		alarm[4] = -1;	
	}
}else{
	alarm[4] = -1;	
}


if(linkTarget != noone || ds_list_size(linkedHeros)>0){//cancel Energy regen
	alarm[5] = 1;
	pauseEnergyRegen = true;	
}

currentMaxEnergy = max( maxEnergy, currentEnergy);
