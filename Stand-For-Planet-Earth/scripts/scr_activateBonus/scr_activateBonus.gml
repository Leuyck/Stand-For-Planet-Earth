///scr_activateBonus();
var slot = noone;

if(bonus1Key){
	slot = 0;	
}else if(bonus2Key){
	slot = 1;	
}
	
if(slot!=noone){
	var bonus = ds_list_find_value(bonusList,slot);
	switch bonus{
		case "invincibilité" :
			bonusInvincible = true;
			currentInvincibiliteDuration = bonusDuration;
			break;
				
		case "energie" :
			bonusEnergy = true;
			currentEnergyDuration = bonusDuration;
			currentEnergy = 12;
			pauseEnergyRegen = true;
			break;
			
		case "vitesse" :
			bonusSpeed = true;
			currentSpeedDuration = bonusDuration;
			alarm[0] = -1;
			break;
	}
	ds_list_replace(bonusList,slot,noone);
}