/// @description 
if(instance_exists(obj_spawnVehicle) && obj_spawnVehicle.usedAsHeroDrop){
	//ne fais rien
}else{
	scr_spawnLocalPlayer();
	with(obj_camera){
		scr_setCameraCoordinates();
	}
}