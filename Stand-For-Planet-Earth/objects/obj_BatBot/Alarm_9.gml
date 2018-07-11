///// @description Recall battes bras droit
var batteIsReturning = false;
if(numberOfBatte != 2 && currentEnergy>=1){
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