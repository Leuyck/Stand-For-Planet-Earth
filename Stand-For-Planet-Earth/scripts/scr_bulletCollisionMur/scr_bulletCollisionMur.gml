///scr_bulletCollisionMur()

action_bounce(1, 1);
		
if(object_index == obj_bullet_EngiBot){///PetBot Bullet
		speed = speed/2
		x=x+lengthdir_x(20,point_direction(x,y,xOrigin,yOrigin));
		y=y+lengthdir_y(20,point_direction(x,y,xOrigin,yOrigin));
		var projectionAngle =(180-angle_difference(point_direction(xOrigin,yOrigin,x,y),direction))/2
		scr_createBulletWallImpactParticules(x,y,direction,projectionAngle);

}else if(object_index == obj_bullet_BatBot){///BatBot hit sound
	if(impactSoundPlayed == false){
		audio_stop_sound(snd_batBot_hitMetal);
		audio_play_sound(snd_batBot_hitMetal,1,false);
		impactSoundPlayed =true;
	}
}else{
	var projectionAngle =(180-angle_difference(point_direction(xOrigin,yOrigin,x,y),direction))/2
	scr_createBulletWallImpactParticules(x,y,direction,projectionAngle);
	instance_destroy();
}

if(explosive){
	explosion = instance_create_depth(x,y,depth,obj_bullet2_explosion);
	explosion.damage = explosionDamage;
}