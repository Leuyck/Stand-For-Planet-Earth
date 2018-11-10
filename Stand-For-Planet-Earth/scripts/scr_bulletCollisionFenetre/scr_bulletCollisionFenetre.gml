///scr_bulletCollisionFenetre(fenetre.id)
var fenetre = argument[0]

if(fenetre.hp ==1){
	fenetre.hp = 0;
	scr_createFenetreProjection(fenetre,3);
			
	if(object_index == obj_bullet_BatBot){///BatBot hit sound
		if(audio_is_playing(snd_batBot_hitMur1)) then audio_stop_sound(snd_batBot_hitMur1);
		if(audio_is_playing(snd_batBot_hitMur2)) then audio_stop_sound(snd_batBot_hitMur2);
		audio_play_sound(asset_get_index("snd_batBot_hitMur"+string(choose(1,2))),1,false);
	}
}