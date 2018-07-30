/// @description 
var hero = instance_place(x, y , obj_localPlayer);
if(hero != noone) {
	var minDistanceBetweenCenters = ceil(hero.x-hero.bbox_left+x-bbox_left);
	x = hero.x + lengthdir_x(minDistanceBetweenCenters,point_direction(hero.x,hero.y,x,y));
	y = hero.y + lengthdir_y(minDistanceBetweenCenters,point_direction(hero.x,hero.y,x,y));
	speed = hero.walkingMaxSpd;
	direction = point_direction(hero.x,hero.y,x,y);
	sensDeRotation = choose(-1,1);
		
	
}
// Inherit the parent event
event_inherited();

image_angle += sensDeRotation *speed /10;