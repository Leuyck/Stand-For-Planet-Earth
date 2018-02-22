///scr_PetBot_fire2Check(availableTarget);

if(fire2 && state !="dead" && currentEnergy>=energyCostForFire2)
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
				exit;
			}
		}if(petTargetHero != noone){
			for(var i = 0; i<ds_list_size(petList); i++){
				var pet = ds_list_find_value(petList,i);
				if(pet.job =="waitForHeal"){
					pet.target = petTargetHero;
					currentEnergy-=energyCostForFire2;
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
				exit;
			}
		}if(petTargetNPC != noone){
			for(var i = 0; i<ds_list_size(petList); i++){
				var pet = ds_list_find_value(petList,i);
				if(pet.job =="waitForAttack"){
					pet.target = petTargetNPC;
					currentEnergy-=energyCostForFire2;
					exit;
				}
			}
		}
	}	
}