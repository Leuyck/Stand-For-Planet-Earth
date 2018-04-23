///scr_bonusEffects();
//invincibilite
if(currentInvincibiliteDuration <=0){
	bonusInvincible = false;
}	
if(bonusInvincible == true){
	currentInvincibiliteDuration--;
}

///SPEED
if(currentSpeedDuration <=0){
	bonusSpeed = false;
}	
if(bonusSpeed == true){
	currentSpeedDuration--;
}
	

///ENERGY
if(currentEnergyDuration <=0){
	bonusEnergy = false;
}	
if(bonusSpeed == true){
	currentEnergyDuration--;
}


