var IA = argument[0];
var enemyKind = argument[1];
var nearestEnnemy = noone;
var bestDistance = noone;

with(obj_localNpc_soldier) {
	var distance = point_distance(IA.x, IA.y, self.x, self.y);
	if(distance <= IA.hearRange && self.behaviour == "attack") {
		var ennemy = scr_getTargetEnnemy(self, enemyKind);
		if(ennemy != noone) {
			if(bestDistance == noone || distance < bestDistance) {
				bestDistance = distance;
				nearestEnnemy = ennemy.id;
			}
		}
	}
}

return nearestEnnemy;