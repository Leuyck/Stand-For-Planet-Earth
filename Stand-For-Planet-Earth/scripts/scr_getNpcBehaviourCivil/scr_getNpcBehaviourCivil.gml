///scr_getNpcBehaviourCivil();

if(fear == false){
	return noone;
}
else {
	if(fearObject != noone && alarm[6]==-1 && behaviour != "hide") {
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
	}
}