var currentDistance = point_distance(xOrigin, yOrigin, x, y);
if(currentDistance > maxDistance) {
    scr_setBatteHit();
	audio_stop_sound(snd_batBot_fire2);
}
if(batteStoped && image_index == image_number-image_speed_hit)
{
    image_speed =0;
    damage=0;
}

var collideMur = instance_place(x,y,obj_mur_parent);
if(collideMur != noone){
	if(collideMur.object_index == obj_fenetre){
		var fenetre = collideMur
		if(fenetre.hp ==1){
			fenetre.hp = 0;
			scr_createFenetreProjection(fenetre,3);
			
			audio_play_sound(snd_batBot_hitMetal,1,false);
		}
		
	}else if(object_get_parent(collideMur.object_index) == obj_mur_parent){
		
		action_bounce(1, 1);
		//play only one particule
		var dir = point_direction(x,y,xOrigin,yOrigin);
		var distance = 50;
		var xx = x+lengthdir_x(distance,dir);
		var yy = y+lengthdir_y(distance,dir);
		var projectionAngle =40;
		scr_createBulletWallImpactParticules(xx,yy,dir,projectionAngle);
		
		audio_stop_sound(snd_batBot_fire2);
		scr_setBatteHit();
		if(impactSoundPlayed ==false){
			audio_play_sound(snd_batBot_hitMetal,1,false);
			impactSoundPlayed =true;
		}
	}
}
