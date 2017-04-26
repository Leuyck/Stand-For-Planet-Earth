// Lumière
if (instance_exists (obj_engine))
{
    SL_draw_sprite_light(spr_light,0,300,20,1,1,0,c_green,0.8);
}
if (global.playerId == self.playerId)
{
        scr_deployHero();
        scr_canMove();
        scr_detectKey();
        scr_dashCheck()
        scr_fire1Check(enableStandardFire1);
        scr_aimHero();
        scr_moveAndCollision();
        scr_standCheck();
        scr_setLegsMovements(enableLegs);
        scr_pressButtonCheck(obj_button);
        scr_setSprites();
        scr_updateLinkEnergyState();
        scr_bumpCheck();
}

scr_createFlouMouvement(c_white,0.05)    //lors du dash, crée le flou de mouvement;


scr_updateLinkState();

