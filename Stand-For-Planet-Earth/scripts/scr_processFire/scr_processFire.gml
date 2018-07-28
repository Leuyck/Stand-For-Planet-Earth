/// scr_processFire(behaviour);

if(alarm[4] > 0) {
	state = "reloading";
}
else if(remainingAmoQuantity == 0) {
	image_index = 0;
	alarm[4] = reloadingTime * room_speed;
	remainingAmoQuantity = amoQuantity;
	state = "reloading";
}

// Fin de la cadence de tir
else if(alarm[3] == -1) {
	for (var i = 0; i < shot1_bullet_count; i++) {
	    scr_createAndSendNewBullet(id, shot1_bullet_type, "ennemi", true)
		audio_play_sound(fire1Sound, 1, false)
	}
	if(canReload == true) {
		remainingAmoQuantity --;
	}
	alarm[3] = room_speed / shot1PerSec;
	image_index = 0;
    state = "firing";
}

else {
	state = "delay_firing";	
}