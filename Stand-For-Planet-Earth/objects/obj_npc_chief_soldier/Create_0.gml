event_inherited();

sight_range = 1000        // Distance de détection
attack_range = 850;       // Distance d'attaque
shot1_delay = 20;         // Cadence de tir
shot1_bullet_count = 6;
precision = 12;           // précision
spd = 3
spdChase = 6;
maxHealth = 400;
currentHealth = maxHealth;
amoQuantity = 10;                   // Quantité de munitions avant de recharger
remainingAmoQuantity = amoQuantity; // Quantités restantes de munitions
reloadingTime = 2;                  // Temps de rechargement de l'arme

walkingSpriteSpeed = spd/20;

ds_map_add(sprites, "standing", spr_hero2_stand);
ds_map_add(sprites, "walking", spr_hero2_move);
ds_map_add(sprites, "chasing", spr_hero2_move);
ds_map_add(sprites, "dashing", spr_hero2_move);
ds_map_add(sprites, "firing", spr_hero2_shot);
ds_map_add(sprites, "reloading", spr_hero2_stand);
ds_map_add(sprites, "delay_firing", spr_hero2_shot);

ds_map_add(imageSpeeds, "standing", 0.25);
ds_map_add(imageSpeeds, "walking", walkingSpriteSpeed);
ds_map_add(imageSpeeds, "chasing", walkingSpriteSpeed*2);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", 0.15);
ds_map_add(imageSpeeds, "reloading", 0.25);
ds_map_add(imageSpeeds, "delay_firing", 0.15);

