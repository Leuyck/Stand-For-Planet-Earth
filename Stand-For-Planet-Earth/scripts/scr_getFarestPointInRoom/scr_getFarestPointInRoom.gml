///@description scr_getFarestPointInRoom (x, y, angle, distance)

var xx = argument[0];
var yy = argument[1];
var angle = argument[2];
var distance = argument_count > 3 ? argument[3] : max(room_width, room_height);

if(distance < 10) {
	return string(xx) + ";" + string(yy);	
}

var halfDistance = distance / 2;
var newX = xx + lengthdir_x(halfDistance, angle);
var newY = yy + lengthdir_y(halfDistance, angle);

var collideWithRoom = collision_line(xx, yy, newX, newY, obj_mur_parent, false, true) != noone || collision_line(xx, yy, newX, newY, obj_door_parent, false, true) != noone;
if (collideWithRoom == true) {
	return scr_getFarestPointInRoom(xx, yy, angle, halfDistance);
}
else {
	return scr_getFarestPointInRoom(newX, newY, angle, halfDistance);
}