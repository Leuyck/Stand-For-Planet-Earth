///scr_PetBot_fire2Check(availableTarget);

if(fire2 && state !="dead" && currentEnergy>=energyCostForFire2 && !ds_list_empty(petList))
{
	mouse_clear(mb_right);
	
	var petTargetNPC = scr_getClosestInstanceInFront(obj_localNpc);
	var petTargetHero = scr_getClosestInstanceInFront(obj_localPlayer);
	
	if(distance_to_object(petTargetNPC) < distance_to_object(petTargetHero) && petTargetNPC != noone){ ///Target NPC
		for(var i = 0; i<ds_list_size(petList); i++){
			var pet = ds_list_find_value(petList,i);
			if(pet.job =="waitForAttack"){
				pet.target = petTargetNPC;
				currentEnergy-=energyCostForFire2;
				if(ds_list_size(linkedHeros)==0){
					pauseEnergyRegen = true;
				}
				exit;
			}
		}if(petTargetHero != noone){
			for(var i = 0; i<ds_list_size(petList); i++){
				var pet = ds_list_find_value(petList,i);
				if(pet.job =="waitForHeal"){
					pet.target = petTargetHero;
					currentEnergy-=energyCostForFire2;
					if(ds_list_size(linkedHeros)==0){
						pauseEnergyRegen = true;
					}
					exit;
				}
			}
		}
	}else if(distance_to_object(petTargetHero) <= distance_to_object(petTargetNPC) && petTargetHero != noone){
		for(var i = 0; i<ds_list_size(petList); i++){ ///Target a Hero
			var pet = ds_list_find_value(petList,i);
			if(pet.job =="waitForHeal"){
				pet.target = petTargetHero;
				currentEnergy-=energyCostForFire2;
				if(ds_list_size(linkedHeros)==0){
					pauseEnergyRegen = true;
				}
				exit;
			}
		}if(petTargetNPC != noone){
			for(var i = 0; i<ds_list_size(petList); i++){
				var pet = ds_list_find_value(petList,i);
				if(pet.job =="waitForAttack"){
					pet.target = petTargetNPC;
					currentEnergy-=energyCostForFire2;
					if(ds_list_size(linkedHeros)==0){
						pauseEnergyRegen = true;
					}
					exit;
				}
			}
		}
	}	
}
if(deployed == true && !instance_exists(obj_PetDrone)){
	for(var i =0; i<3; i++){
		pet = instance_create_depth(x+random_range(-100,100),y+random_range(-100,100),depth-1, obj_PetDrone);
		pet.parent = id;
		ds_list_add(petList,pet);
	}	
}