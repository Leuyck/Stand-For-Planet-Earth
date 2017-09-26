///scr_PetDrone_passiveMovements();
var grid = gridObject.grid;

patrolXOrigin = parent.x;           // Originale position X
patrolYOrigin = parent.y;           // Originale position Y

if(distance_to_object(parent)>patrolRange){
	chasing = true;
}else{
	chasing =false;
}

if (!chasing){
	if(path_index == -1){
		if( alarm[0] == -1){//set the pause
			alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5));
		}//when alarm expire, patrol run
	}
}else{
	if(alarm[0]>0.3*room_speed || alarm[0] ==-1){ //break the pause
		alarm[0] = 1
	}
}