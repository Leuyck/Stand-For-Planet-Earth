/// @description 

// Inherit the parent event
event_inherited();

var player = instance_place(x,y,obj_localPlayer);
if(player != noone){
	if(player.currentMunition != player.maxMunition){
		player.currentMunition = player.maxMunition
		instance_destroy();
	}
}