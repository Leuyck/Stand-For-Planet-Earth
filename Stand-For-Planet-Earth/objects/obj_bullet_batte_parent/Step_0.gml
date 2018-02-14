audio_emitter_position(audioEmitter,x,y,0);

if(explosive) then damage = 0;

if(batteStoped && image_index == image_number-image_speed_hit)
{
    image_speed =0;
    damage=0;
}
if(returnToBatBot){
	if(collision_line(x,y,bulletFrom.x,bulletFrom.y,obj_decor_base,false,true) == noone){
		var relativeBrasY = bulletFrom.relativeBrasDroitY;
		if(object_index == obj_bullet_batte_g) then relativeBrasY = bulletFrom.relativeBrasGaucheY;
		var xTarget = bulletFrom.x + lengthdir_x(bulletFrom.relativeBrasX, bulletFrom.image_angle) - lengthdir_y(relativeBrasY, bulletFrom.image_angle)
		var yTarget = bulletFrom.y + lengthdir_y(bulletFrom.relativeBrasX, bulletFrom.image_angle) + lengthdir_x(relativeBrasY, bulletFrom.image_angle);
		
		move_towards_point(xTarget,yTarget,bulletSpeed);
		image_speed = -0.7
		sprite_index = flySprite;
		image_angle = direction;
		audio_stop_sound(hitSound);
		if(lanchSound == noone){
			lanchSound = audio_play_sound_on(audioEmitter,snd_batBot_fire2,true,1);
		}
	}
}
if(!batteStoped){
	var currentDistance = point_distance(xOrigin, yOrigin, x, y);
	if(currentDistance > maxDistance) {
		audio_stop_sound(lanchSound);
		lanchSound = noone;
	    scr_setBatteHit();
		batteStoped = true;
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
			batteStoped = true;
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
			batteStoped = true;
		}
	}
}
