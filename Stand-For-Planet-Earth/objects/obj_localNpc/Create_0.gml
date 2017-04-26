/// Initialisation

// Properties
DEBUG_RANGES = false;               // Variable indiquant si l'on veut debugger le déplacement (dessine les chemins en rouge)
npcId = global.npcIdCounter++;      // Identifiant du npc
normalSpd = 5
spd = normalSpd;                    // Vitesse de déplacement standard
spdChase = 2*normalSpd;             // Vitesse de poursuite
state = "";                         // Etat du npc  
maxHealth = 100;                     // Vie max du npc
currentHealth = maxHealth;          // Vie du npc


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
reloadingTime = 2;                  // Temps de rechargement de l'arme
fire1SpriteSpeed = (shot1PerSec*image_number)/room_speed; //vitesse du sprite fire 
lastHitId = noone;                  //dernier id de bullet batbot

// PATH
DEBUG_PATH = false                  // Affichage des chemins
path = path_add();                  // Chemin de déplacement

// PATROL
DEBUG_PATROL_AREA = false;          // Affiche les zones de patrouilles
patrolXOrigin = x;                  // Originale position X
patrolYOrigin = y;                  // Originale position Y
patrolRange = 500;                  // Distance de patrouille
patrolPauseTime = 2;

// alarms
alarm [0] = -1;                     // Walk time
alarm [1] = -1;                     // Patrol waiting time
alarm [2] = 1;                      // Send npc coordinates
alarm [3] = -1;                     // Shot delay
alarm [4] = -1;                     // Relad time

/// create lists
sprites = ds_map_create();
imageSpeeds = ds_map_create();

