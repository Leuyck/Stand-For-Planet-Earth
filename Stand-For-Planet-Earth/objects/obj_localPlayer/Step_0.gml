if(!onSpawnVehicle){
	scr_deployHero();
	scr_canMove();
	scr_detectKey();
	scr_setPauseGame();
	scr_dashCheck()
	scr_fire1Check();
	scr_aimHero();
	scr_moveAndCollision();
	scr_setLegsMovements();
	scr_setLink();
	scr_updateLinkEnergyState();
	scr_bumpCheck();
	scr_setParticuleEmitterState()
	scr_setDead();
	scr_resurectAllie();
}else{
	state = "notDeployed";
	image_index=0;
}
currentHealth = clamp(currentHealth,0,maxHealth);


if(global.gamePaused == true){
	image_speed = 0;	
}

