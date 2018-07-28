var IA = argument[0];
var ennemyKind = argument[1];
var nearestEnnemy = noone;
var bestDistance = noone;

with(ennemyKind) {	
	var distance = point_distance(IA.x, IA.y, self.x, self.y);
	if (distance <= IA.hearRange && (self.state == "firing1" || self.state == "firing2")) {
		if(bestDistance == noone || distance < bestDistance) {
		    bestDistance = distance;
		    nearestEnnemy = self.id;
		}
	}
}

return nearestEnnemy;