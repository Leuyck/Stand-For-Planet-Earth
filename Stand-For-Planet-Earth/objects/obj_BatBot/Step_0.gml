scr_deployHero();
scr_canMove();
scr_detectKey();
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
scr_bonusEffects()

if(percentOfOneHp >= 1 && state != "dead"){
	percentOfOneHp = 0;
	currentHealth+=1;
}
currentHealth = clamp(currentHealth,0,maxHealth);
currentEnergy = clamp(currentEnergy,0,12);

if(global.gamePaused == true){
	image_speed = 0;	
}

