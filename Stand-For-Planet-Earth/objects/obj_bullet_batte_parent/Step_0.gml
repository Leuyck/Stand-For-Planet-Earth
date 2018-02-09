audio_emitter_position(audioEmitter,x,y,0);

var currentDistance = point_distance(xOrigin, yOrigin, x, y);
if(currentDistance > maxDistance && !batteStoped) {
	audio_stop_sound(lanchSound);
	lanchSound = noone;
    scr_setBatteHit();
}
if(batteStoped && image_index == image_number-image_speed_hit)
{
    image_speed =0;
    damage=0;
}
if(returnToBatBot){
	var direct = point_direction(x,y,bulletFrom.x,bulletFrom.y);
	if(collision_line(x+lengthdir_x(20,direct),y+lengthdir_y(20,direct),bulletFrom.x,bulletFrom.y,obj_decor_base,false,true) == noone){
		move_towards_point(bulletFrom.x,bulletFrom.y,bulletSpeed);
		image_speed = -0.7
		sprite_index = flySprite;
		audio_stop_sound(hitSound);
		if(lanchSound == noone){
			lanchSound = audio_play_sound_on(audioEmitter,snd_batBot_fire2,true,1);
		}
	}
}

var collideMur = instance_place(x,y,obj_decor_base);
if(collideMur != noone &&!returnToBatBot){
	if(collideMur.object_index == obj_fenetre){
		var fenetre = collideMur
		if(fenetre.hp ==1){
			fenetre.hp = 0;
			scr_createFenetreProjection(fenetre,3);
			
			hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
		}
		
	}else if(object_get_parent(collideMur.object_index) == obj_mur_parent){
		
		action_bounce(1, 1);
		//play only one particule
		//var dir = point_direction(x,y,xOrigin,yOrigin);
		//var distance = 50;
		//var xx = x+lengthdir_x(distance,dir);
		//var yy = y+lengthdir_y(distance,dir);
		//var projectionAngle =40;
		//scr_createBulletWallImpactParticules(xx,yy,dir,projectionAngle);
		
		audio_stop_sound(lanchSound);
		lanchSound = noone;
		scr_setBatteHit();
		if(hitSound ==noone){
			hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
		}
	}else{
		action_bounce(1, 1);
		//play only one particule
		//var dir = point_direction(x,y,xOrigin,yOrigin);
		//var distance = 50;
		//var xx = x+lengthdir_x(distance,dir);
		//var yy = y+lengthdir_y(distance,dir);
		//var projectionAngle =40;
		//scr_createBulletWallImpactParticules(xx,yy,dir,projectionAngle);
		
		audio_stop_sound(lanchSound);
		lanchSound = noone;
		scr_setBatteHit();
		if(hitSound ==noone){
			hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
		}
	}
}
