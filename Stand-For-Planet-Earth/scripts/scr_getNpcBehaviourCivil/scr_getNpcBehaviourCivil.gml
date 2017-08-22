///@description scr_getNpcBehaviourCivil(IA);
var IA = argument[0];
var fearObject = argument[1];
var behaviour = noone;

if(fear ==false){
	if(IA.spd!=0){
		behaviour ="walking";
	}else{
		behaviour ="waiting";
	}
}else{
	if(fearObject !=noone){
		behaviour = "running";
	}else{
		behaviour = "waiting";
	}
}