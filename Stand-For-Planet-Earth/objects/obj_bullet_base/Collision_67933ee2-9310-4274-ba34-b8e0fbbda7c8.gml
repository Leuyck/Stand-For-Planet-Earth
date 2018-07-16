/// @description 
if(owner == "ennemi"){
	instance_destroy();	
	other.bulletTanked++
	var projectionAngle =30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
	scr_createBulletShieldImpactParticules(x,y,direction,projectionAngle);
}