/// @description 
if(enableMusic){
	if(room == rm_world2 || room == rm_world2_1){
		music = snd_rm_world2;
	}else{
		if(audio_is_playing(music)) then audio_stop_sound(music);
		music = noone;		
	}
}else{
	if(audio_is_playing(music)) then audio_stop_sound(music);
	music = noone;	
}



if(music != noone){
	if(!audio_is_playing(music)){
		audio_play_sound(music,10,true)
	}
}