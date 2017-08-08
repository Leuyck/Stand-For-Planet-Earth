event_inherited();

// Overrides default values
runningMaxSpd = 7;
enableLegs = false;
legs_type = obj_PetBot_jambes;
legsImageSpeed = 0.5;

enableDeploy = false;

weaponPosX = 97;
weaponPosY = 23;
shot1PerSec = 3 ;                        //nombre de tir par sec
shot1_bullet_count = 1;                 // Nombre de balles
shot1_bullet_type = obj_bullet_PetBot;        // Type de balle
precision = 3;                          // Précision

scr_setFire1SpeedAndDuration(spr_PetBot_shot)

ds_map_add(sprites, "standing", spr_npc_valise);
ds_map_add(sprites, "walking", spr_npc_valise);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);

alarm[6] = -1

global.creativeMod = true;
zoomEnable= true;
instanceCreated = noone;
instanceResized = noone;

instanceSelected = false;
