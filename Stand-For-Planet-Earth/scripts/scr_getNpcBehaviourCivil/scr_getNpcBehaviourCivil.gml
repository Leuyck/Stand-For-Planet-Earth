///scr_getNpcBehaviourCivil();

if(currentHealth <= 0) {
	return noone;	
}

if(fear == true) {
	if(other.alarm[4] != -1) {
		return "run away";	
	}
	else if(alarm[3] != -1) { 
		return "pls";	
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
	alarm[3] = fearDuration;
	alarm[4] = runDuration;
	if(path_exists(path)) {
		path_delete(path);
	}
	return "run away";
}

return noone;