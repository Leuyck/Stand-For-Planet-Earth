///scr_bulletCollisionMur()

action_bounce(1, 1);
var projectionAngle =(180-angle_difference(point_direction(xOrigin,yOrigin,x,y),direction))/2
scr_createBulletWallImpactParticules(x,y,direction,projectionAngle);
		
if(object_index == obj_bullet3){///PetBot Bullet
		speed = speed/2
		image_speed = image_speed/2
		x=x+lengthdir_x(20,point_direction(x,y,xOrigin,yOrigin));
		y=y+lengthdir_y(20,point_direction(x,y,xOrigin,yOrigin));

}else if(object_index == obj_bullet_BatBot){///BatBot hit sound
	if(impactSoundPlayed == false){
		audio_stop_sound(snd_batBot_hitMetal);
		audio_play_sound(snd_batBot_hitMetal,1,false);
		impactSoundPlayed =true;
	}
}else{
	instance_destroy();
}
