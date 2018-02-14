if(!batteStoped && !canPierce){
	audio_stop_sound(lanchSound);
	lanchSound = noone;
	
	scr_setBatteHit();
	
	hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitHuman,false,1);
	
	var dir = point_direction(xOrigin,yOrigin,x,y);
	var distance =  point_distance(x,y,other.x,other.y);
	var xx = x+lengthdir_x(distance,dir);
	var yy = y+lengthdir_y(distance,dir);
	var projectionAngle =35;
	
	scr_createBulletNPCImpactParticules(xx,yy,dir,projectionAngle);
	batteStoped = true;
}else if(canPierce){
	if(explosive == true){
		var explosion = instance_create_depth(x,y,depth-1,obj_explosion)
		explosion.range = explosionRange;
		explosion.damage = explosionDamage;
	}
}
