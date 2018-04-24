/// @description Process life regen and energy regen
var refreshTime = 0.1;

if(!pauseEnergyRegen){
	if(currentEnergy < 3+bonusEnergy*3 && currentEnergy >= 0){
		energyStack += currentEnergyRegen * refreshTime
	}else if(currentEnergy>3+bonusEnergy*3 && ds_list_size(linkedHeros)==0){
		energyStack += overChargedDegen * refreshTime;	
	}
	
	if(abs(energyStack) ==1){
		currentEnergy+=energyStack;
		energyStack = 0;
	}
	
}else{
	pauseEnergyRegen = false;
	refreshTime = 2;	
	energyStack = 0;
}

alarm[5] = refreshTime * room_speed;

