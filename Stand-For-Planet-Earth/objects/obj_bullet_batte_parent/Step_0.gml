audio_emitter_position(audioEmitter,x,y,0);

if(explosive) then damage = 0;

if(batteStoped && image_index >= image_number-1)
{
    image_speed =0;
    damage=0;
	speed = 0;
}
if(returnToBatBot){
	var instanceList = collision_line_list(x,y,bulletFrom.x,bulletFrom.y,obj_decor_base,false,true);
	var canCrossAllInstance = true;
	if(instanceList != noone){
		for (var i = 0; i < ds_list_size(instanceList); ++i) {
			var instance = ds_list_find_value(instanceList,i)
		    if(object_get_parent(instance.object_index) == obj_mobilier_parent && instance.bulletCrossed == true){
			
			}else{
				canCrossAllInstance = false;
			}
		}
	}
	
	if(canCrossAllInstance){
		var relativeBrasY = bulletFrom.relativeBrasDroitY;
		if(object_index == obj_bullet_batte_g) then relativeBrasY = bulletFrom.relativeBrasGaucheY;
		var xTarget = bulletFrom.x + lengthdir_x(bulletFrom.relativeBrasX, bulletFrom.image_angle) - lengthdir_y(relativeBrasY, bulletFrom.image_angle)
		var yTarget = bulletFrom.y + lengthdir_y(bulletFrom.relativeBrasX, bulletFrom.image_angle) + lengthdir_x(relativeBrasY, bulletFrom.image_angle);
		
		move_towards_point(xTarget,yTarget,bulletSpeed);
		sprite_index = flySprite;
		image_angle = direction;
		image_speed = 1;
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
		direction = direction -180;
	    scr_setBatteHit();
	}
	
	var collideMur = instance_place(x,y,obj_mur_parent);
	if(collideMur != noone && !returnToBatBot){
		if(collideMur.object_index == obj_fenetre){
			if(collideMur.hp ==1){
				collideMur.hp = 0;
				scr_createFenetreProjection(collideMur,3);
				hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
			}
		}else if(object_get_parent(collideMur.object_index) == obj_mur_parent){
			action_bounce(1, 1);
			audio_stop_sound(lanchSound);
			lanchSound = noone;
			scr_setBatteHit();
			if(hitSound ==noone){
				hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
			}
		}else if(object_get_parent(collideMur.object_index) == obj_door_parent ||object_get_parent(collideMur.object_index) == obj_door_card_parent){
			action_bounce(1, 1);
			audio_stop_sound(lanchSound);
			lanchSound = noone;
			scr_setBatteHit();
			if(hitSound ==noone){
				hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
			}
		}
	}
	
	var collideDecor = instance_place(x,y,obj_decor_base);
	if(collideDecor != noone ){
		if(object_get_parent(collideDecor.object_index) == obj_mobilier_parent && collideDecor.bulletCrossed == true){
				//Ne Rien Faire
		}else{
			action_bounce(1, 1);
		
			audio_stop_sound(lanchSound);
			lanchSound = noone;
			scr_setBatteHit();
			if(hitSound ==noone){
				hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
			}
		}
	}
}else if(batteStoped && !returnToBatBot){
	var staticFrame = 3
	if(image_index<=staticFrame){
		speed =0;	
	}else if(image_index<=staticFrame+1){
		speed =bulletSpeed/2
	}else if (speed>0){
		speed-=bulletSpeed/(2*(20 +(staticFrame+1)))	
	}else{
		speed = 0;
	}
	
	if(speed !=0){ //en cas de nouvelle collision, arrete la bate
		var collideDecor = instance_place(x,y,obj_decor_base);
		if(collideDecor != noone){
			if(object_get_parent(collideDecor.object_index) == obj_mobilier_parent && collideDecor.bulletCrossed == true){
				//Ne Rien Faire
			}else{
				speed = 0;
				image_index = image_number-1;
				audio_stop_sound(lanchSound);
				lanchSound = noone;
				hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitMetal,false,1);
				audio_sound_gain(hitSound,0.5,0)
			}
		}	
	}
}



if(place_meeting(x,y,bulletFrom)){
	if (batteStoped || returnToBatBot){
		instance_destroy();
		bulletFrom.numberOfBatte++;
	}
}

var collideEnemi = instance_place(x,y,obj_localNpc);
if(collideEnemi != noone){
	if(!batteStoped && !canPierce){
		audio_stop_sound(lanchSound);
		lanchSound = noone;
		hitSound = audio_play_sound_on(audioEmitter,snd_batBot_hitHuman,false,1);
		scr_setBatteHit();
		var dir = point_direction(xOrigin,yOrigin,x,y);
		var distance =  point_distance(x,y,collideEnemi.x,collideEnemi.y);
		var xx = x+lengthdir_x(distance,dir);
		var yy = y+lengthdir_y(distance,dir);
		var projectionAngle =35;
		scr_createBulletNPCImpactParticules(collideEnemi,xx,yy,dir,projectionAngle);
		if(collideEnemi.lastHitId != id){
			collideEnemi.currentHealth -= damage;
			collideEnemi.lastHitId = id;
		}
	}else if(canPierce){
		if(explosive == true){
			var explosion = instance_create_depth(x,y,depth-1,obj_explosion)
			explosion.range = explosionRange;
			explosion.damage = explosionDamage;
		}
	}
}

if(x<=70 || x>= room_width-70 || y <= 70 || y >= room_height-70){	
	audio_stop_sound(lanchSound);
	lanchSound = noone;
	scr_setBatteHit();
}

x = clamp(x,70,room_width-70);
y = clamp(y,70,room_height-70);

