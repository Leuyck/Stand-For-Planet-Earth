///@description scr_getNpcBehaviourCivil(IA);
var IA = argument[0];
var fearObject = argument[1];

if(fear ==false){
	if(IA.spd!=0){
		behaviour ="walking";
	}else{

		behaviour ="waiting";
	}
}else{
	if(fearObject != noone && alarm[6]==-1 && behaviour !="hide"){
		behaviour = "running";
		alarm[6] = runDuration;
	}else if(fearObject !=noone && alarm[6] ==0 && alarm[5]!=-1){
		behaviour = "hide"
	}else if(fearObject == noone && alarm[5] !=-1){
		behaviour = "waiting";
	}
	
}
return behaviour;