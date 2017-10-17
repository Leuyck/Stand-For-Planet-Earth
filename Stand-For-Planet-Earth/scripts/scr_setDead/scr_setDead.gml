///@description scr_setDead();

if(currentHealth <=0 && state !="dead"){
currentHealthRegen =0;
currentEnergyRegen =0;
currentEnergy =0;
currentHealth =0;

state ="dead";
image_index=0;
}
if(state =="dead" && image_index >=image_number-1){
	image_index = image_number-1;
}
if(state=="dead" && currentHealth >0){
	state = "standing";
	currentHealthRegen = healthRegen;
	currentEnergyRegen= energyRegen;
}
///END THE GAME
var endGame =true;
with(obj_localPlayer){
	if(state!="dead"){
		endGame = false	
	}
}
	
if(endGame == true){
	if(!instance_exists(obj_endGameMenu)){
		instance_create_depth(obj_camera.x,obj_camera.y,-10000,obj_endGameMenu);
	}
}
