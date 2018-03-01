/// @description 
if(object_get_parent(bulletFrom.object_index) == obj_localPlayer){
	var projectionAngle =30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
	scr_createBulletNPCImpactParticules(x,y,direction,projectionAngle);
	action_bounce(1, 1);
	speed = speed/4
}

