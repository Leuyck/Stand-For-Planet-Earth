/// Initialisation
event_inherited();

weaponPosX = 185                    //différence de position entre X et weaponX
weaponPosY = -4                     //différence de position entre Y et weaponY
sight_range = 800;                  // Distance de détection
attack_range_min = 200;				//Distance d'attaque minimum
attack_range_max = 400;				//Distance d'attaque maximum
attack_range = irandom_range(attack_range_min,attack_range_max);                 // Distance d'attaque
shot1_bullet_count = 1;             // Nombre de balles
shot1PerSecMax = 12;
shot1PerSec = shot1PerSecMax;       // Cadence de tir par sec
shot1_bullet_type = obj_bulletNPC;  // Type de balle
precision = 3;                      // Précision de tir
ennemySpotted = false;              // Indique si un ennemy a été détecté.
amoQuantity = 10;                   // Quantité de munitions avant de recharger
remainingAmoQuantity = 10;          // Quantités restantes de munitions
canReload = true;
reloadingTime = 2;                  // Temps de rechargement de l'arme

fire1Sound = snd_pistolBot_fire1;

alarm[5] = -1; ///refresh chase path