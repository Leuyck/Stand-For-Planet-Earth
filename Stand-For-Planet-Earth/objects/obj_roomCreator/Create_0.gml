event_inherited();

// Overrides default values

relativeBoutCanonX = 97;
relativeBoutCanonY = 23;
shot1PerSec = 3 ;                        //nombre de tir par sec
shot1_bullet_count = 1;                 // Nombre de balles
fire1Sprite = spr_EngiBot_shot;
precision = 3;                          // Précision

ds_map_add(sprites, "standing", spr_npc_valise);
ds_map_add(sprites, "walking", spr_npc_valise);
ds_map_add(sprites, "firing1", spr_npc_valise);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "firing1", 0);

alarm[6] = -1

global.creativeMod = true;
zoomEnable= true;
instanceCreated = array_create(0,0);
instanceResized = array_create(0,0);

instanceSelected = false;

scr_room_chat_ini();

///light shadow
scr_createLightCollisionCircle(80,114,85,154);

if(instance_exists(obj_warFog)){
	if(layer_exists(obj_warFog.layer)) then layer_set_visible(obj_warFog.layer,false);
}