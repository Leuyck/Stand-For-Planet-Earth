/// @description Process life regen and energy regen
var refreshTime = 0.1;


/*if(currentHealth <= maxHealth) {
    currentHealth += min(maxHealth, currentHealthRegen * refreshTime);
}*/
    
if(!pauseEnergyRegen){
	if(currentEnergy < 3 && currentEnergy >= 0){
		currentEnergy += currentEnergyRegen * refreshTime;
	}
}else{
	pauseEnergyRegen = false;
	refreshTime = 2;	
}

alarm[5] = refreshTime * room_speed;

