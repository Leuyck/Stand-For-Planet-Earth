/// @description 
if(owner == "ennemi")
{
	var projectionAngle =30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
	scr_createBulletPlayerImpactParticules1(x,y,direction,projectionAngle);
	
	
	if (other.currentHealth > 0) then other.currentHealth -= damage;
	instance_destroy();
}
