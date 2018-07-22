var xx = argument[0];
var yy = argument[1];
var otherX = argument[2];
var otherY = argument[3];

return collision_line(xx, yy, otherX, otherY, obj_mur_parent, false, true) != noone || 
	   collision_line(xx, yy, otherX, otherY, obj_door_parent, false, true) != noone