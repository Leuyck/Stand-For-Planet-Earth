///scr_bulletCollisionFenetre(fenetre.id)
var fenetre = argument[0]

if(fenetre.hp ==1){
	fenetre.hp = 0;
	scr_createFenetreProjection(fenetre,3);
			
	if(object_index == obj_bullet_BatBot){///BatBot hit sound
		audio_stop_sound(snd_batBot_hitMetal);
		audio_play_sound(snd_batBot_hitMetal,1,false);
	}
}