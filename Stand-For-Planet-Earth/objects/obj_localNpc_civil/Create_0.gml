event_inherited();

normalSpd = 5
spd = normalSpd;                    // Vitesse de déplacement standard
spdChase = 2*normalSpd;             // Vitesse de poursuite
maxHealth = 1;                     // Vie max du npc
currentHealth = maxHealth;

fear = false;
fearObject = noone;
runDuration = 5*room_speed;
fearDuration = 10*room_speed;
hearRange = 500;
viewRange = 500;
heroSpotted = false;

scaryPeople = ds_list_create();
scaryObject = ds_list_create();
ds_list_add(scaryObject,obj_bullet_base);
ds_list_add(scaryObject,obj_bullet_batte_parent);
ds_list_add(scaryObject,obj_bullet_BatBot);
ds_list_add(scaryObject,obj_npc_mort);

alarm[5] = -1; ///fear duration
alarm[6] = -1; ///run duration