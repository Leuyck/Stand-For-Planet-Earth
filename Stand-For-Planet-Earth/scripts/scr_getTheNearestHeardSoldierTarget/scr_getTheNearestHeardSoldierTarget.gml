var IA = argument[0];
var ennemyKind = argument[1];
var nearestEnnemy = noone;
var bestDistance = noone;

with(obj_localNpc_soldier) {
	var distance = point_distance(IA.x, IA.y, self.x, self.y);
	if(distance <= IA.hearRange && self.behaviour == "attack") {
		var ennemy = scr_getTargetEnnemy(self, ennemyKind);
		if(ennemy != noone) {
			if(bestDistance == noone || distance < bestDistance) {
				bestDistance = distance;
				nearestEnnemy = ennemy.id;
			}
		}
	}
}

return nearestEnnemy;