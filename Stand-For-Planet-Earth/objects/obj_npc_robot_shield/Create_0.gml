event_inherited();

// Override properties
weaponPosX = 73;                    //différence de position entre X et weaponX
weaponPosY = 0;                     //différence de position entre Y et weaponY
sight_range = 1300                  // Distance de détection
attack_range = 150;                 // Distance d'attaque
shot1PerSecMax = 1;                 //tir par seconde
shot1PerSec = shot1PerSecMax;       // Cadence de tir par sec
precision = 3;                      // précision
normalSpd = 3
spd = normalSpd;                    // Vitesse de déplacement standard
spdChase = 2*normalSpd;             // Vitesse de poursuite
amoQuantity = 25;                   // Quantité de munitions avant de recharger
shot1_bullet_type = obj_bullet_robot_shield;
remainingAmoQuantity = amoQuantity; // Quantités restantes de munitions
reloadingTime = 3;                  // Temps de rechargement de l'arme

scr_setFireSpeedAndDuration(spr_npc2_shot,shot1PerSec);
walkingSpriteSpeed = spd/20;

ds_map_add(sprites, "standing", spr_npc2_stand);
ds_map_add(sprites, "walking", spr_npc2_move);
ds_map_add(sprites, "chasing", spr_npc2_move);
ds_map_add(sprites, "dashing", spr_npc2_move);
ds_map_add(sprites, "firing", spr_npc2_shot);
//ds_map_add(sprites, "reloading", spr_hero1_reload);
ds_map_add(sprites, "delay_firing", spr_npc2_shot);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", walkingSpriteSpeed);
ds_map_add(imageSpeeds, "chasing", walkingSpriteSpeed*2);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", 1);
//ds_map_add(imageSpeeds, "reloading", 0.25);
ds_map_add(imageSpeeds, "delay_firing", 1);

