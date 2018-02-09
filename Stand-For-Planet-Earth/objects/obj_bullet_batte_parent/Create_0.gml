xOrigin = x;
yOrigin = y;
owner = "";
maxDistance = 1500;
bulletFrom=noone;


image_speed = 0.7
bulletSpeed = 25
speed = bulletSpeed;
damage = 3;

hitSprite = spr_batte_BatBot_hit_d
flySprite = sprite_index;
animPerSec = 2;
image_speed_hit = animPerSec * sprite_get_number(hitSprite)/room_speed // sprite s'execute en 1/4s
batteStoped = false;
returnToBatBot = false;

///SOUND
audioEmitter = audio_emitter_create()
audio_emitter_falloff(audioEmitter,display_get_gui_width(),display_get_gui_width()*3,1)

lanchSound = audio_play_sound_on(audioEmitter,snd_batBot_fire2,true,1);
hitSound = noone
