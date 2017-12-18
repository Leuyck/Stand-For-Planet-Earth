if(bulletFrom.object_index == obj_localPlayer){
	var projectionAngle =30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
	
	scr_createBulletNPCImpactParticules(x,y,direction,projectionAngle);
	
	instance_destroy();
}

if(createDot) then scr_giveDotTo(other.id);

