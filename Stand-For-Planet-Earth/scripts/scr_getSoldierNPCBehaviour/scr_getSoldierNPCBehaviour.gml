/// scr_getSoldierNPCBehaviour(IA, ennemyKind)
var IA = argument[0];
var ennemy = argument[1]

if(IA.currentHealth <= 0) {
	return noone;	
}
	
var eyeContactWithEnnemi = scr_isCollidingWithRoom(IA.x, IA.y , ennemy.x, ennemy.y) == false;
var distanceToennemy = point_distance(IA.x, IA.y , ennemy.x, ennemy.y);
	
/*if(distanceToennemy > IA.viewRange) {
	return noone; // todo: aller à la dernière position vue	
}*/
	
if(!eyeContactWithEnnemi) {
	return "chase";
}

if(behaviour == "attack" && distanceToennemy <= IA.attack_range) {
	return "attack";
}
else if(distanceToennemy > IA.attack_range - irandom_range(300, 400)) {
	return "chase";
}
	
var mobilier = collision_line(IA.x, IA.y, ennemy.x, ennemy.y, obj_mobilier_parent, false, true);
if(mobilier != noone && mobilier.bulletCrossed == false) {
	return "chase";
}
	
return "attack";
