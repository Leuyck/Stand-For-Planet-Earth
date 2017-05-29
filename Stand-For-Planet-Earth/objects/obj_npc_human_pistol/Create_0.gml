event_inherited();

// Override properties
weaponPosX = 82;                    //différence de position entre X et weaponX
weaponPosY = 7;                     //différence de position entre Y et weaponY
sight_range = 1300                  // Distance de détection
attack_range = 950;                 // Distance d'attaque
shot1PerSecMax = 2;                 //tir par seconde
shot1PerSec = shot1PerSecMax;       // Cadence de tir par sec
precision = 3;                      // précision
normalSpd = 5;
spd = normalSpd;                    // Vitesse de déplacement standard
spdChase = 2*normalSpd;             // Vitesse de poursuite
amoQuantity = 25;                   // Quantité de munitions avant de recharger
remainingAmoQuantity = amoQuantity; // Quantités restantes de munitions
reloadingTime = 3;                  // Temps de rechargement de l'arme

scr_setFire1SpeedAndDuration(spr_npc1_shot);
walkingSpriteSpeed = spd/20;

ds_map_add(sprites, "standing", spr_npc1_stand);
ds_map_add(sprites, "walking", spr_npc1_move);
ds_map_add(sprites, "chasing", spr_npc1_move);
ds_map_add(sprites, "dashing", spr_npc1_move);
ds_map_add(sprites, "firing", spr_npc1_shot);
//ds_map_add(sprites, "reloading", spr_hero1_reload);
ds_map_add(sprites, "delay_firing", spr_npc1_shot);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", walkingSpriteSpeed);
ds_map_add(imageSpeeds, "chasing", walkingSpriteSpeed*2);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", fire1SpriteSpeed);
//ds_map_add(imageSpeeds, "reloading", 0.25);
ds_map_add(imageSpeeds, "delay_firing", fire1SpriteSpeed);

