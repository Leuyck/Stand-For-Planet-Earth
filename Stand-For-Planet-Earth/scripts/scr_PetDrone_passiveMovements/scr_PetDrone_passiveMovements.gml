///scr_PetDrone_passiveMovements();

patrolXOrigin = parent.x;           // Originale position X
patrolYOrigin = parent.y;           // Originale position Y

if(currentTankFuel==tankSpace)
{
	job = "waitForHeal";
}else{
	job = "waitForAttack";
}

if(distance_to_object(parent)>patrolRange){
	chasing = true;
	if(alarm[0]>0.3*room_speed || alarm[0] ==-1){ //break the pause
		alarm[0] = 1
	}
}else{
	chasing =false;
	if(path_index == -1){
		if( alarm[0] == -1){//set the pause
			alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5));
		}//when alarm expire, patrol run
	}
}