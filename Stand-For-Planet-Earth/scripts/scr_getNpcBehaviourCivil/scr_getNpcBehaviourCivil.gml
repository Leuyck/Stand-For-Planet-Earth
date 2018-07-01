///scr_getNpcBehaviourCivil();

if(fear ==false){
	if(self.spd!=0){
		behaviour ="walking";
	}else{
		behaviour ="waiting";
	}
}else{
	if(fearObject != noone && alarm[6]==-1 && behaviour !="hide"){
		behaviour = "running";
		alarm[6] = runDuration;
	}else if(fearObject !=noone && alarm[6] ==0 && alarm[5]!=-1){
		if(path_exists(path)) {
			path_end();
			path_delete(path);	
		}
		behaviour = "hide"
	}else if(fearObject == noone && alarm[5] !=-1){
		behaviour = "waiting";
	}
	
}
return behaviour;