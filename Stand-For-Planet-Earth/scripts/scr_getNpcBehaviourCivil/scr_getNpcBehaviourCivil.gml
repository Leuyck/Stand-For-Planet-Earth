///scr_getNpcBehaviourCivil();

if(fear == true){
	if(other.alarm[6] != -1) {
		return "fear";	
	}
	else if(alarm[5] != -1) { 
		return "pls";	
	}
	other.fear = false;
	if(path_exists(other.path)) {
		path_delete(other.path);
	}
}

with(obj_localPlayer){
	if(distance_to_object(other) < other.hearRange && (state = "firing1" || state = "firing2")) {
		other.fear = true;
		other.alarm[5] = other.fearDuration;
		other.alarm[6] = other.runDuration;
		if(path_exists(other.path)) {
			path_delete(other.path);
		}
	}
}	

if(fear == true) {
	return "fear";
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
