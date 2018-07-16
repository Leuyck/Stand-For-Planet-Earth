///scr_BatBot_recallBatte()
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