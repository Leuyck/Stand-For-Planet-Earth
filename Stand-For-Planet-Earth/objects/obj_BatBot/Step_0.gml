//if (global.playerId == self.playerId && global.gamePaused == false)
{

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
        scr_pressButtonCheck(obj_button);
		scr_toggleLink();
        scr_setSprites();
        scr_updateLinkEnergyState();
        scr_bumpCheck();
		scr_setParticuleEmitterState();
		//scr_setDead();
		
		currentHealth = clamp(currentHealth,0,maxHealth);

}

//scr_createFlouMouvement(c_white,0.05)    //lors du dash, crée le flou de mouvement;

scr_updateLinkState();

