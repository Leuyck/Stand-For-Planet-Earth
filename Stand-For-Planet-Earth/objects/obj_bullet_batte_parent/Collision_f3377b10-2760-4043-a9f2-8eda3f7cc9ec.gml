audio_stop_sound(snd_batBot_fire2);
scr_setBatteHit();
if(playHitSound ==1){
	audio_play_sound(snd_batBot_hitMetal,1,false);
	playHitSound--;
	
	//play only one particule
	var dir = point_direction(x,y,xOrigin,yOrigin);
	var distance = 50;
	var xx = x+lengthdir_x(distance,dir);
	var yy = y+lengthdir_y(distance,dir);
	var projectionAngle =40;

	scr_createBulletWallImpactParticules(xx,yy,dir,projectionAngle);
}