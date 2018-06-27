/// @description 


if(owner == "ennemi")
{
	var projectionAngle =30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
	scr_createBulletPlayerImpactParticules1(x,y,direction,projectionAngle);
	
	
	if (other.currentHealth > 0 && other.bonusInvincible = false){
		other.currentHealth -= damage;
	}
	instance_destroy();
	
	var hittedByBullet = other.id;
	with(obj_healthBar_vignette){
		if(self.hero == hittedByBullet.id){
			scr_createGlitch(self.id,obj_glitch_GUI);
		}
	}	
}
