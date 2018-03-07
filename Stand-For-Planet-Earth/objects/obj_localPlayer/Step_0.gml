// Lumière
//if (global.playerId == self.playerId && global.gamePaused == false)
{
    scr_deployHero();
    scr_canMove();
    scr_detectKey();
	scr_setPauseGame();
	scr_dashCheck()
    scr_fire1Check();
    scr_aimHero();
    scr_moveAndCollision();
    scr_setLegsMovements();
    //scr_pressButtonCheck(obj_button);
	scr_toggleLink();
    scr_updateLinkEnergyState();
    scr_bumpCheck();
	scr_setParticuleEmitterState()
	scr_setDead();
	scr_resurectAllie();
	
	currentHealth = clamp(currentHealth,0,maxHealth);
	currentEnergy = clamp(currentEnergy,0,currentMaxEnergy);
}
if(global.gamePaused == true){
	image_speed = 0;	
}

scr_createFlouMouvement(c_white,0.05)    //lors du dash, crée le flou de mouvement;

scr_updateLinkState();

