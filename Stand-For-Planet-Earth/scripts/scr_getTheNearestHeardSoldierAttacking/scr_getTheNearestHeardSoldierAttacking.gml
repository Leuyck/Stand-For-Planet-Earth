var IA = argument[0];
var bestDistance = noone;
var nearest = noone;

with(obj_localNpc_soldier) {
	if(self.behaviour == "attack") {
		var distance = point_distance(IA.x, IA.y, self.x, self.y);
		if(distance <= IA.hearRange) {
			if(!scr_collideLineWithLargeWall(IA)) {
				if(bestDistance == noone || distance < bestDistance) {
					bestDistance = distance;
					nearest = self.id;
				}
			}
		}
	}
}

return nearest;