///@description scr_setDead();
if(canDie == true){
	if(currentHealth <=0 && state !="dead"){
		currentEnergyRegen =0;
		currentEnergy =0;
		currentHealth =0;
		deployed = false;

		state ="dead";
		image_index=0;
	
		var explosion = instance_create_depth(x,y,depth-2,obj_explosion_robot);
		explosion.parent = self.id;
		//explosion.sprite = spr_explosion_hero
	}
	if(state =="dead" && image_index >=image_number-1){
		image_index = image_number-1;
	}
	if(state=="dead" && currentHealth >0){
		state = "standing";	
		image_index =0;
		currentEnergyRegen= energyRegen;
	}
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
