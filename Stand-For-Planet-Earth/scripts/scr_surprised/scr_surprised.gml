var ennemy = argument[0];

if(alarm[6] == -1) {
	alarm[6] = reactionTime * room_speed;
}
direction = point_direction(x, y, ennemy.x, ennemy.y);
state = "standing";