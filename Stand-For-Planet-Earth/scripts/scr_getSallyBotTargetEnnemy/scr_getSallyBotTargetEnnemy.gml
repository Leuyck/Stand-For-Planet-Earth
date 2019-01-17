///scr_getSallyBotTargetEnnemy(id,localplayer);
var IA = argument[0];
var ennemyKind = argument[1]

if(ennemy == noone && alarm[7] <0){
	if(distance_to_object(ennemyKind)<1600){
		ennemy = scr_getRandomObjectId(obj_localPlayer)	;
		alarm[7]=choose(3,4,5,6,7) * room_speed;
	}
}else if(ennemy != noone && alarm[7]<0){
	ennemy = scr_getRandomObjectId(obj_localPlayer)	;
	alarm[7]=choose(3,4,5,6,7) * room_speed;
	
}

//if(IA.ennemySpotted) {
//	viewRange = 1600;
//	ennemy =  scr_getRandomObjectId(obj_localPlayer)	;
//	if(ennemy == noone){
//		IA.ennemySpotted =false
//		return ennemy;
//	}
//}
IA.ennemySpotted = ennemy != noone;
if(IA.ennemySpotted == false) then viewRange = 800;
return ennemy;