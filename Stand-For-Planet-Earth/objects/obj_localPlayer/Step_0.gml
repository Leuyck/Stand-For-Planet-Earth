

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
scr_bonusEffects();
scr_deployHero();

currentHealth = clamp(currentHealth,0,maxHealth);
currentEnergy = clamp(currentEnergy,0,12);


if(global.gamePaused == true){
	image_speed = 0;	
}

