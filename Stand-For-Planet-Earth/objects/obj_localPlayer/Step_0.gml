scr_canMove();
scr_detectKey();
scr_dashCheck()
scr_aimHero();
scr_moveAndCollision();
scr_setLegsMovements();
scr_setLink();
scr_updateLinkEnergyState();
scr_bumpCheck();
scr_setParticuleEmitterState()
scr_setDead();
scr_resurectAllie();
scr_activateBonus();
scr_bonusEffects();
scr_deployHero();


if(percentOfOneHp >= 1 && state != "dead"){
	percentOfOneHp = 0;
	currentHealth+=1;
	obj_score.totalHeal+=1;
}
currentHealth = clamp(currentHealth,0,maxHealth);
currentEnergy = clamp(currentEnergy,0,12);


if(global.gamePaused == true){
	image_speed = 0;	
}

