/// scr_getSoldierNPCBehaviour(IA, enemyKind)
var IA = argument[0];
var enemyKind = argument[1]

if(IA.currentHealth <= 0) {
	return noone;	
}

var enemy = scr_getTargetEnnemy(IA, enemyKind);
if(enemy != noone) {
	
	var hiddenByDoorOrWall = collision_line(IA.x, IA.y, enemy.x, enemy.y, obj_mur_parent, false, true) != noone || collision_line(IA.x, IA.y, enemy.x, enemy.y, obj_door_parent, true, true) != noone;
	var distanceToEnemy = point_distance(IA.x, IA.y , enemy.x, enemy.y);
	
	/*if(distanceToEnemy > IA.viewRange) {
		return noone; // todo: aller à la dernière position vue	
	}*/
	
	if(hiddenByDoorOrWall || distanceToEnemy > IA.attack_range) {
		return "chase";
	}
	
	var mobilier = collision_line(IA.x, IA.y, enemy.x, enemy.y, obj_mobilier_parent, false, true);
	if(mobilier != noone && mobilier.bulletCrossed == false) {
		return "chase";
	}
	
	return "attack";
}

return noone;	
