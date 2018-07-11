///@description scr_getClosestPointToRoomLimits(x, y, distance, direction);

var xx = argument[0];
var yy = argument[1];
var distance = argument[2];
var roomDirection = argument[3];

if (distance < 10) {
	switch(roomDirection) {
		case "top":
		case "bottom":
			return yy;
		case "right":
		case "left":
			return xx;
		default:
			return noone;
	}
}
else {
	var halfDistance = distance / 2;
	var newX = xx;
	var newY = yy;
	
	switch(roomDirection) {
		case "top":
			newY = max(yy - halfDistance, 0);
			break;
		case "bottom":
			newY = min(yy + halfDistance, room_height);
			break;
		case "right":
			newX = min(xx + halfDistance, room_width);
			break;
		case "left":
			newX = max(xx - halfDistance, 0);
			break;
		default:
			return noone;
	}
	
	var collideWithRoom = collision_line(xx, yy, newX, newY, obj_mur_parent, false, true) != noone || collision_line(xx, yy, newX, newY, obj_door_parent, false, true) != noone;
	if (collideWithRoom == true) {
		return scr_getClosestPointToRoomLimits(xx, yy, halfDistance, roomDirection);
	}
	else {
		return scr_getClosestPointToRoomLimits(newX, newY, halfDistance, roomDirection);
	}
}