///scr_getFearObject()

with(obj_localPlayer){
	if(distance_to_object(other) <= other.hearRange && (self.state == "firing1" || self.state == "firing2")) {
		return self;
	}
}

with(obj_localNpc_soldier){
	if(distance_to_object(other) <= other.hearRange && self.behaviour == "attack") {
		return self;
	}
}

with(obj_localNpc_civil){
	if(self.id != other.id && distance_to_object(other) < other.viewRange && self.fear == true) {
		return self;
	}
}

return noone;