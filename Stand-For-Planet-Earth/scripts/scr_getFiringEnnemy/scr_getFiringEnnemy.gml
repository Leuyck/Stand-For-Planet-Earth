///scr_getFiringEnnemy()

with(obj_localPlayer){
	if(distance_to_object(other) < other.hearRange && (self.state = "firing1" || self.state = "firing2")) {
		return self;
	}
}

with(obj_localNpc_soldier){
	if(distance_to_object(other) < other.hearRange && self.state = "attack") {
		return self;
	}
}

return noone;