///scr_getNpcBehaviourCivil();

if(fear == true){
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

var fearObject = scr_getFiringEnnemy();
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


/*if(fearObject != noone && alarm[6]==-1 && behaviour != "hide") {
	alarm[6] = runDuration;
	return "running";
}
else if(fearObject !=noone && alarm[6] ==0 && alarm[5]!=-1) {
	if(path_exists(path)) {
		path_end();
		path_delete(path);	
	}
	return "hide"
}
else if(fearObject == noone && alarm[5] !=-1){
	return "waiting";
}
else {
	return noone;	
}*/
