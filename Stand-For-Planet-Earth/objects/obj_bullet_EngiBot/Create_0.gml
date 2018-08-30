/// @description 

// Inherit the parent event
event_inherited();

image_index = 1;
rotation = choose (-2,-1,1,2);

if(instance_exists(obj_score)){
	obj_score.totalAmmoUsed++
}