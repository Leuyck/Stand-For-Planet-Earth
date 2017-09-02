/// Initialisation
event_inherited();

weaponPosX = 185                    //différence de position entre X et weaponX
weaponPosY = -4                     //différence de position entre Y et weaponY
sight_range = 800;                  // Distance de détection
attack_range = 400;                 // Distance d'attaque
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
fire1SpriteSpeed = (shot1PerSec*image_number)/room_speed; //vitesse du sprite fire 