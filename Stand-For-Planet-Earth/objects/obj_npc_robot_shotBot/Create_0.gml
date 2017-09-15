event_inherited();

// Override properties
genre = "robot";
weaponPosX = 161-82;                    //différence de position entre X et weaponX
weaponPosY = 63-98;                     //différence de position entre Y et weaponY
sight_range = 1300                  // Distance de détection
attack_range = 950;                 // Distance d'attaque
shot1PerSecMax = 1;                 //tir par seconde
shot1_bullet_count = 10;
shot1PerSec = shot1PerSecMax;       // Cadence de tir par sec
precision = 10;                      // précision
normalSpd = 3;
spd = normalSpd;                    // Vitesse de déplacement standard
spdChase = 2*normalSpd;             // Vitesse de poursuite
amoQuantity = 13;                   // Quantité de munitions avant de recharger
canReload = false;
remainingAmoQuantity = amoQuantity; // Quantités restantes de munitions
reloadingTime = 0.7;                  // Temps de rechargement de l'arme

scr_setFireImageSpeed(spr_npc_shotBot_shot,shot1PerSec);
scr_setMoveImageSpeed(spr_npc_shotBot_marche,normalSpd,128);

ds_map_add(sprites, "standing", spr_npc_shotBot_marche);
ds_map_add(sprites, "walking", spr_npc_shotBot_marche);
ds_map_add(sprites, "chasing", spr_npc_shotBot_marche);
ds_map_add(sprites, "dashing", spr_npc_shotBot_marche);
ds_map_add(sprites, "firing", spr_npc_shotBot_shot);
ds_map_add(sprites, "reloading", spr_npc1_reload);
ds_map_add(sprites, "delay_firing", spr_npc_shotBot_shot);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "chasing", 2);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", 1);
ds_map_add(imageSpeeds, "reloading", 0);
ds_map_add(imageSpeeds, "delay_firing", 1);

