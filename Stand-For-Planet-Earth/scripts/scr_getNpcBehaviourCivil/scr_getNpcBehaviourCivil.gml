///scr_getNpcBehaviourCivil();

if(currentHealth <= 0) {
	return noone;	
}

if(fear == true) {
	if(other.alarm[3] != -1) {
		return "run away";	
	}
	else {
		other.fear = false;
		if(path_exists(other.path)) {
			path_delete(other.path);
		}
	}
}

var fearObject = scr_getFearObject();
if(fearObject != noone) {
	fear = true;
	patrolType = "random"; // on met à random pour qu'une fois le fear disparu, le déplacement soit aléatoire
	alarm[3] = fearDuration * room_speed;
	if(path_exists(path)) {
		path_delete(path);
	}
	return "run away";
}

return noone;