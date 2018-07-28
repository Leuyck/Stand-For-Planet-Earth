/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(place_meeting(x, y, obj_mur_parent)) {
	action_bounce(1, 1);
	vspeed /= 2;
	hspeed /= 2;
}