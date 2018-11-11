
relativeBoutCanonX =114-71
relativeBoutCanonY =0

parent = noone;
state ="lanch"

maxHealth = 100;
currentHealth = maxHealth

shot1_bullet_type = obj_bullet_pistol
ennemySpotted = false;
targetNPC = noone;
fieldOfView = 360;
baseAnglePosition = 0;

countdown = noone;

speed = 40
sprite_index = spr_turet_deploy;
image_speed = 0

alarm[2] = -1
alarm[3] = 1///réseaux

audioEmitter = audio_emitter_create()
audio_emitter_falloff(audioEmitter,display_get_gui_width(),display_get_gui_width()*3,1)
