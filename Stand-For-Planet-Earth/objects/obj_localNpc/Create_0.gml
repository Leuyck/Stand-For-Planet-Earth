/// Initialisation

// On définit les NPCS comme étant des objets solides.
// Cela permet qu'ils ne se superposent pas et essayent
// de trouver des chemins alternatifs. (mp_potential_step)
solid = true;

///ACTIVATION RANGE
activationRange = 4000;
active = false;

// DEBUG
DEBUG = false;
DEBUG_RANGES = false;
DEBUG_HEAR_RANGE = false;
DEBUG_VIEW_RANGE = false;

// Properties
spd = normalSpd;										// Vitesse de déplacement standard
state = "standing";										// Etat du npc  
currentHealth = maxHealth;								// Vie du npc
lastHitId = noone;										// dernier id de bullet batbot

// Gestion du path de déplacmeent
DEBUG_PATH = false										// Affichage des chemins
path = noone;											// Chemin de déplacement
nextPositionX = 0;										// Prochaine position X dans le path
nextPositionY = 0;										// Prochaine position Y dans le path
positionInPath = 0;										// étape dans le path
maxTimeToReachNextPosition = 1;							// Temps en seconde de la durée maximale de déplacement vers un point du path
failedAttemptToReachPointInPathCount = 0;				// Nombre de tentative pour aller à un point du path
maxFailedAttemptToReachPointInPath = 2;					// Nombre de tentative maximum avant le reset du path
distanceWherePointConsideredReached = sprite_width / 4; // Distance à partir de laquelle on considère que le point est atteint

// PATROL
DEBUG_PATROL_AREA = false;          // Affiche les zones de patrouilles
patrolXOrigin = x;                  // Originale position X
patrolYOrigin = y;                  // Originale position Y
patrolPoints = noone;

// create lists
sprites = ds_map_create();
imageSpeeds = ds_map_create();

// SCRIPTS
behaviour ="waiting";
