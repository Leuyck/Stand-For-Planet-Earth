
audio_stop_sound(snd_batBot_fire2);
scr_setBatteHit();
if(impactSoundPlayed ==1){
	audio_play_sound(snd_batBot_hitHuman,1,false);
	impactSoundPlayed--;
	
	var dir = point_direction(xOrigin,yOrigin,x,y);
	var distance =  point_distance(x,y,other.x,other.y);
	var xx = x+lengthdir_x(distance,dir);
	var yy = y+lengthdir_y(distance,dir);
	var projectionAngle =35;
	
	scr_createBulletNPCImpactParticules(xx,yy,dir,projectionAngle);
}
