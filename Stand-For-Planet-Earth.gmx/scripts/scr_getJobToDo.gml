var npc = argument[0];
var target = argument[1];

if(target == noone && npc.spd!=0) {
    job = "patrol";
}
else if(heroSpotted != noone) {
    var hiddenByObject = collision_line(npc.x, npc.y, target.x, target.y, obj_wall, false, true) != noone;
    var distanceToTarget = point_distance(npc.x, npc.y , target.x, target.y);
    
    // If the target is close and not hidden by object, we attack.
    if(distanceToTarget < npc.attack_range && hiddenByObject == false) {
        job = "attack";
    }
    // If the target is away, we chase it
    else if(distanceToTarget < npc.sight_range) {
        job = "chase";
    }
    // Else the target is far away, we patrol
    else {
        job = "patrol";
    }
}
else {
    job = "waiting";
}

return job;
