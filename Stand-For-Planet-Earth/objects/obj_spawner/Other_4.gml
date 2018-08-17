/// @description 
if(global.inWorld){
	if(instance_exists(obj_spawnVehicle) && obj_spawnVehicle.usedAsHeroDrop || instance_exists(obj_cleaningRoom)){
		//ne fais rien
	}else{
		scr_spawnLocalPlayer();
		with(obj_camera){
			scr_setCameraCoordinates();
		}
	}
}