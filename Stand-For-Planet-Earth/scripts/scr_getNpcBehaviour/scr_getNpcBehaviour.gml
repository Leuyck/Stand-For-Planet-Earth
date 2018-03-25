/// scr_getNpcBehaviour(IA, target)
var IA = argument[0];
var target = argument[1];

if(target == noone && IA.spd!=0) {
	behaviour = "patrol";
}
else if(target != noone) {
	var hiddenByObject = collision_line(IA.x, IA.y, target.x, target.y, obj_decor_base, false, true) != noone;
	var distanceToTarget = point_distance(IA.x, IA.y , target.x, target.y);
    
	// If the target is close and not hidden by object, we attack.
	if(distanceToTarget < IA.attack_range && hiddenByObject == false){
		behaviour = "attack";
	} 
	else if(distanceToTarget < IA.attack_range_max && hiddenByObject == false) {
		if(behaviour != "attack"){
			behaviour = "chase";
		}
	}
	// If the target is away, we chase it
	else if(distanceToTarget < IA.sight_range || IA.ennemySpotted) {
	    behaviour = "chase";
	}
	// Else the target is far away, we patrol
	else {
	    behaviour = "patrol";
	}
}
else {
	behaviour = "waiting";
}

return behaviour;