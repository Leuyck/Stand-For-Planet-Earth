///scr_PetDrone_activeMovements();

if(instance_exists(target)){
	if(job =="waitForAttack"){
		if(object_is_ancestor(target.object_index, obj_localNpc) == true){
			job = "attack";
		}
	}
	else if(job =="waitForHeal"){
		if (object_is_ancestor(target.object_index, obj_localPlayer) == true){
			job = "heal";
		}
	}
}else{
	job = "waitForAttack";
	target = noone;
	if(currentTankFuel==tankSpace){
		job="waitForHeal";
	}
	path_end();
}
	
if(job=="attack"){
	if(currentTankFuel<tankSpace){
		if(collision_point(x,y,target,false,true)==noone){
			scr_PetDrone_setPathToTarget();
		}else{
			job = "attacking"
			path_end();
		}
	}else{
		target = noone;
		job = "waitForHeal"
	} 
}else if(job == "heal"){
	if(currentTankFuel>0){
		if(distance_to_object(target)>attackRange){
			scr_PetDrone_setPathToTarget();
		}else{
			job = "healing"
			path_end();
		}
	}else{
		currentTankFuel=0;
		alarm[0] = 1;
		job = "waitForAttack"
		target = noone;
	}
}else if(job == "attacking"){
	if(image_index >image_number-1){
		target.currentHealth-=damage;
		currentTankFuel = tankSpace;
		job = "waitForHeal";
		target = noone;
	}
}else if(job =="healing"){
	if(image_index >image_number-1){
		target.currentHealth+=damage;
		currentTankFuel = 0
		job = "waitForAttack";
		target = noone;
	}
}