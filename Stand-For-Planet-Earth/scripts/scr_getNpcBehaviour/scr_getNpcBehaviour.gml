/// scr_getNpcBehaviour(IA, enemyKind)
var IA = argument[0];
var enemyKind = argument[1]

var enemy = scr_getTargetEnnemy(IA, enemyKind);
if(enemy != noone) {
	var hiddenByObject = collision_line(IA.x, IA.y, enemy.x, enemy.y, obj_decor_base, false, true) != noone;
	var distanceToEnemy = point_distance(IA.x, IA.y , enemy.x, enemy.y);
	
	if(hiddenByObject == false) {
		if(distanceToEnemy < IA.attack_range) {
			return "attack";
		}
		else if(distanceToEnemy < IA.attack_range_max) {
			if(behaviour != "attack"){
				return "chase";
			}
		}
		else if(distanceToEnemy < IA.viewRange) {
			return "chase";
		}
	}
	else {
		if(distanceToEnemy < IA.viewRange) {
			return "chase";
		}
	}
}

return noone;	
