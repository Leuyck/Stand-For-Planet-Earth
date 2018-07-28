var IA = argument[0];
var ennemyKind = argument[1];
var nearest = noone;
var bestDistance = noone;

with(ennemyKind) {	
	if(self.state == "firing1" || self.state == "firing2") {
		var distance = point_distance(IA.x, IA.y, self.x, self.y);
		if(distance <= IA.hearRange) {
			if (!scr_collideLineWithLargeWall(other)) {
				if(bestDistance == noone || distance < bestDistance) {
				    bestDistance = distance;
				    nearest = self.id;
				}
			}
		}
	}
}

return nearest;