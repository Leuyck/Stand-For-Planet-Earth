/// scr_getNpcBehaviour(IA, enemyKind)
var IA = argument[0];
var enemyKind = argument[1]

if(IA.active == false) {
	return "waiting";
}

var targetEnnemy = noone;

if(IA.ennemySpotted) {
	targetEnnemy = instance_nearest(IA.x, IA.y, enemyKind);
	if(targetEnnemy == noone) {
		IA.ennemySpotted = false;	
	}
}

if(targetEnnemy == noone) {
	targetEnnemy = src_getTheNearestVisibleEnnemyFromIA(IA, enemyKind);
}

if(targetEnnemy == noone) {
	return "patrol";
}
else if(target != noone) {
	var hiddenByObject = collision_line(IA.x, IA.y, targetEnnemy.x, targetEnnemy.y, obj_decor_base, false, true) != noone;
	var distanceToEnemy = point_distance(IA.x, IA.y , targetEnnemy.x, targetEnnemy.y);
	
	if(hiddenByObject == false) {
		if(distanceToEnemy < IA.attack_range) {
			return "attack";
		}
		else if(distanceToEnemy < IA.attack_range_max) {
			if(behaviour != "attack"){
				return "chase";
			}
		}
		else if(distanceToEnemy < IA.sight_range) {
			return "chase";
		}
		else {
			return "patrol";
		}
	}
	else {
		if(distanceToEnemy < IA.sight_range) {
			return "chase";
		}
		else {
			return "patrol";
		}
	}
}