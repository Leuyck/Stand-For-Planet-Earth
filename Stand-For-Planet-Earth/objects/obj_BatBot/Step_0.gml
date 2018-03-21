scr_deployHero();
scr_canMove();
scr_detectKey();
scr_setPauseGame();
scr_dashCheck();
scr_aimHero();
scr_fire1CheckBatBot();
scr_fire2CheckBatBot();
scr_moveAndCollision();
scr_setBatBotSprites();
scr_setLegsMovements();
scr_setLink();
scr_updateLinkEnergyState();
scr_bumpCheck();
scr_setParticuleEmitterState();
scr_setDead();
scr_resurectAllie();

		
currentHealth = clamp(currentHealth,0,maxHealth);


if(global.gamePaused == true){
	image_speed = 0;	
}

