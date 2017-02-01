/// scr_getNpcBehaviour(IA, target)
var IA = argument[0];
var target = argument[1];
var behaviour = noone;

if(target != noone) {
    var hiddenByObject = collision_line(IA.x, IA.y, target.x, target.y, obj_wall, false, true) != noone;
    var distanceToTarget = point_distance(IA.x, IA.y , target.x, target.y);
    
    // If the target is close and not hidden by object, we attack.
    if(distanceToTarget < IA.attack_range && hiddenByObject == false) {
        behaviour = "attack";
    }
}
else {
    behaviour = "waiting";
}

return behaviour