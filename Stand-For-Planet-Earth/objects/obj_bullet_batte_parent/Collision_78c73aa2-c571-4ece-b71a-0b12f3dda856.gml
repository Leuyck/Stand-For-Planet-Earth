
audio_stop_sound(snd_batBot_fire2);
scr_setBatteHit();
if(playHitSound ==1){
	audio_play_sound(snd_batBot_hitHuman,1,false);
	playHitSound--;
}
