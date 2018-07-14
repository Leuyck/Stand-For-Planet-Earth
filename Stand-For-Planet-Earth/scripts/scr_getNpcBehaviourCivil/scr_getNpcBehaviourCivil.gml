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

with(obj_localPlayer){
	if(distance_to_object(other) < other.hearRange && (state = "firing1" || state = "firing2")) {
		other.fear = true;
		other.alarm[3] = other.fearDuration;
		other.alarm[4] = other.runDuration;
		if(path_exists(other.path)) {
			path_delete(other.path);
		}
		return "run away";
	}
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
