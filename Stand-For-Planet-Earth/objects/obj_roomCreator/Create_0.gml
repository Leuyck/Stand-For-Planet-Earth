event_inherited();

// Overrides default values

weaponPosX = 97;
weaponPosY = 23;
shot1PerSec = 3 ;                        //nombre de tir par sec
shot1_bullet_count = 1;                 // Nombre de balles
shot1_bullet_type = obj_bullet_PetBot;        // Type de balle
precision = 3;                          // Précision

ds_map_add(sprites, "standing", spr_npc_valise);
ds_map_add(sprites, "walking", spr_npc_valise);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);

alarm[6] = -1

global.creativeMod = true;
zoomEnable= true;
instanceCreated = array_create(0,0);
instanceResized = array_create(0,0);

instanceSelected = false;

scr_room_chat_ini()

///light shadow
scr_createLightCollisionCircle(80,114,85,154);
