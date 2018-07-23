/// @description Enable object

if(active == false) {
	if (distance_to_object(obj_localPlayer) <= activationRange) {
		active = true;
	}
}

