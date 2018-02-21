///scr_PetBot_fire2Check(availableTarget);

if(fire2 && state !="dead")
{
	mouse_clear(mb_right);
	
	var petTargetNPC = scr_getClosestInstanceInFront(obj_localNpc)

	//for(var i = 0; i<ds_list_size(petList); i++){
	//	var pet = ds_list_find_value(petList,i);
	//	if(pet.target ==0){
	//		pet.target = petTarget;
	//		currentEnergy-=energyCostForFire2;
	//		exit;
	//	}
	//}
	
}