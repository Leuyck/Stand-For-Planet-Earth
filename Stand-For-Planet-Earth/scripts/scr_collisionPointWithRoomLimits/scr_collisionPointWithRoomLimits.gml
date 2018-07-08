var xx = argument[0];
var yy = argument[1];

return collision_point(xx, yy, obj_mur_parent, false, true) != noone || 
	   collision_point(xx, yy, obj_door_parent, false, true) != noone;