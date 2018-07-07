xOrigin = x;
yOrigin = y;
owner = "";
maxDistance = 1500;
bulletFrom=noone;

bulletSpeed = 25
speed = bulletSpeed;
	
explosive = false;
explosionRange = 500;
explosionDamage = 5;
canPierce = false;

flySprite = sprite_index;
batteStoped = false;
returnToBatBot = false;

///SOUND
audioEmitter = audio_emitter_create()
audio_emitter_falloff(audioEmitter,display_get_gui_width(),display_get_gui_width()*3,1)

lanchSound = audio_play_sound_on(audioEmitter,snd_batBot_fire2,true,1);
hitSound = noone
