xOrigin = x;
yOrigin = y;
owner = "";
maxDistance = 1500;
bulletFrom=noone;
impactSoundPlayed = false;
audio_play_sound(snd_batBot_fire2,1,true);

image_speed = 0.7
speed = 25;
damage = 3;

hitSprite = spr_batte_BatBot_hit_d
animPerSec = 2;
image_speed_hit = animPerSec * sprite_get_number(hitSprite)/room_speed // sprite s'execute en 1/4s
batteStoped = false;