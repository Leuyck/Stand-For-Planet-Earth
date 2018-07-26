///scr_PetBot_fire2Check(availableTarget);
if(fire2 && state !="dead" && currentEnergy>=energyCostForFire2){
	for (var i = 0; i < 3; ++i) {
	    var pet = instance_create_depth(x,y,depth-1,obj_PetDrone);
		pet.direction = image_angle + irandom_range(-10,10);
		pet.range = 400 +150*(i+1);
		pet.level = floor (currentEnergy / 3)
	}
	currentEnergy = 0;
	if(ds_list_size(linkedHeros)==0){
		pauseEnergyRegen = true;
	}
}