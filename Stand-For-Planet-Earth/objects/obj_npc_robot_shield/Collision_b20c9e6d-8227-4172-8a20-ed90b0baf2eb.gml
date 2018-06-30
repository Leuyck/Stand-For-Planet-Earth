/// @description 
if(lastHitId != other.id){
	var angle = point_direction(x,y,other.x,other.y);
	if(abs(angle_difference(image_angle,angle))>160){
		var bulletDamage = other.damage;
	    currentHealth -= bulletDamage;
	    lastHitId = other.id;
		audio_play_sound(snd_batBot_hitHuman,1,false)
	}else{
		if(other.impactSoundPlayed == false){
			audio_stop_sound(snd_batBot_hitMetal);
			audio_play_sound(snd_batBot_hitMetal,1,false);
			other.impactSoundPlayed =true;
		}
	}
}