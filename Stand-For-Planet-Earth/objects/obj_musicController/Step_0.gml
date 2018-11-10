/// @description 
var music = noone;
if(room == rm_world2 || room == rm_world2_1){
	var music = snd_rm_world2;
}


if(music != noone){
	if(!audio_is_playing(music)){
		audio_play_sound(music,10,true)
	}
}