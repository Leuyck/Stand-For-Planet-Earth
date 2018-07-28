var IA = argument[0];
var bestDistance = noone;
var nearest = noone;

with(obj_localNpc_civil){
	if(self.id != IA.id) {
		if(self.fear) {
			var distance = distance_to_object(IA);
			if(distance < IA.viewRange) {
				var directEyeContact = scr_isCollidingWithRoom(self.x, self.y, IA.x, IA.y) == false;
				if(directEyeContact) {
					if(bestDistance == noone || distance < bestDistance) {
						bestDistance = distance;
						nearest = self.id;
					}
				}	
			}
		}
	}
}

return nearest;