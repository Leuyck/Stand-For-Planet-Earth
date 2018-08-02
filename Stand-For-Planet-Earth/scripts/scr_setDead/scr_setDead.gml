///@description scr_setDead();
if(canDie == true){
	if(currentHealth <=0 && state !="dead"){
		currentEnergyRegen =0;
		currentEnergy =0;
		currentHealth =0;
		deployed = false;
		ds_list_replace(bonusList,0,noone);
		ds_list_replace(bonusList,1,noone);
		bonusInvincible = false;
		bonusSpeed = false;
		bonusEnergy = false;

		state ="dead";
		image_index=0;
	
		var explosion = instance_create_depth(x,y,depth-2,obj_explosion_robot);
		explosion.parent = self.id;
	}
	if(state =="dead" && image_index >=image_number-1){
		image_index = image_number-1;
		
		if(object_index == obj_BatBot){
			with(obj_bullet_batte_parent){
				instance_destroy();	
			}
			numberOfBatte = 2;
		}
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
