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
genre = "humain";

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

walkingSpriteSpeed = spd/20;

// alarms
alarm [0] = -1;                     // Walk time
alarm [1] = -1;                     // Patrol waiting time
alarm [2] = 1;                      // Send npc coordinates
alarm [3] = -1;                     // Shot delay
alarm [4] = -1;                     // Relad time



/// create lists
sprites = ds_map_create();
imageSpeeds = ds_map_create();


script = false;
scriptPatrolX=0;
scriptPatrolY=0;
behaviour ="waiting";