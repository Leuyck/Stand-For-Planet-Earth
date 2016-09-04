/// scr_getNpcBehaviour(npc, target)
var npc = argument[0];
var target = argument[1];
var behaviour = noone;

if(target == noone && npc.spd!=0) {
    behaviour = "patrol";
}
else if(heroSpotted != noone) {
    var hiddenByObject = collision_line(npc.x, npc.y, target.x, target.y, obj_wall, false, true) != noone;
    var distanceToTarget = point_distance(npc.x, npc.y , target.x, target.y);
    
    // If the target is close and not hidden by object, we attack.
    if(distanceToTarget < npc.attack_range && hiddenByObject == false) {
        behaviour = "attack";
    }
    // If the target is away, we chase it
    else if(distanceToTarget < npc.sight_range || npc.heroSpotted) {
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
