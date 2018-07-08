/// Initialisation

///ACTIVATION RANGE
activationRange = 4000;
active = false;

// Properties
DEBUG_RANGES = false;               // Variable indiquant si l'on veut debugger le déplacement (dessine les chemins en rouge)
//npcId = global.npcIdCounter++;      // Identifiant du npc
spd = normalSpd;                    // Vitesse de déplacement standard
spdChase = 2*normalSpd;             // Vitesse de poursuite
state = "standing";                         // Etat du npc  
currentHealth = maxHealth;          // Vie du npc

lastHitId = noone;                  //dernier id de bullet batbot

// PATH
DEBUG_PATH = false                  // Affichage des chemins
path = noone;//path_add();                  // Chemin de déplacement
nextPositionX = 0;
nextPositionY = 0;
positionInPath = 0;

// PATROL
DEBUG_PATROL_AREA = false;          // Affiche les zones de patrouilles
patrolXOrigin = x;                  // Originale position X
patrolYOrigin = y;                  // Originale position Y
patrolRectangle = scr_calculPatrolRectangle(x,y,x,y);


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

///SCRIPTS
script = false;
scriptPatrolX=0;
scriptPatrolY=0;
behaviour ="waiting";
