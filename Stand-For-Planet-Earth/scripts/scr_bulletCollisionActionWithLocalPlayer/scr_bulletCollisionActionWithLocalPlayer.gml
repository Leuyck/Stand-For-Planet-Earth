///scr_bulletCollisionActionWithLocalPlayer(collideInstance)

var collideInstance = argument[0];

if(owner == "ennemi"){
	var projectionAngle =30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
	scr_createBulletPlayerImpactParticules1(x,y,direction,projectionAngle);
	if(collideInstance.glitch==noone){
		if (collideInstance.deployed != false && collideInstance.currentHealth > 0 && collideInstance.bonusInvincible == false){
			collideInstance.currentHealth -= damage;
			//with(obj_healthBar_vignette){
			//	if(self.hero == collideInstance){
			//		scr_createGlitch(self.id,obj_glitch_GUI);
			//	}
			//}	
			scr_createGlitch(collideInstance,obj_glitch);
		}
	}
	instance_destroy();
}