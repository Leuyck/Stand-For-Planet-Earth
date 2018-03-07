///initialize some variables
size = 2;

controller = noone;					//id of controller;
playerNumber = -1;
playerId = noone;                   // Id du hero
playerName = "";                    // Nom du hero
state = "standing";                 // Etat permettant de choisir les sprites et l'image speed
depth = -100;

// MOVE
objectBlockingMovement=scr_createobjectBlockingMovementList();

// DEPLOY
deployed = false;

// WEAPON
weaponPosX = 185                    //différence de position entre X et weaponX
weaponPosY = -4                      //différence de position entre Y et weaponY

scr_setFireImageSpeed(spr_hero1_shot,shot1PerSec)

// DASH
dashing = false;
dashTime = 0.3;                     // durée de dash
dashSpeed = 3 * walkingMaxSpd       // Vitesse de déplacement pendant le dash             
dashNumber = 2;                     // Nombre de dash possible d'affilée
dashCooldown = 2;                   // Temps d'attente avant d'obtenir un nouveau dash

//BUMP
bump=false;

// HEALTH
maxHealth = 5;
currentHealth = maxHealth;
healthRegen = 0;                    // Regénération par seconde
currentHealthRegen = healthRegen;

// ENERGY
maxEnergy = 3;                    // Max énergie défaut
currentMaxEnergy = maxEnergy;       // Max énergie courante
currentEnergy = maxEnergy
energyRegen = 0.5;                    // Regénération par seconde
currentEnergyRegen = energyRegen;
pauseEnergyRegen = false;

// LINK
linkTarget = noone;                 // Lien de la cible à lier
internalLinkColor = c_red;          // Couleur du lien interne
externalLinkColor = c_aqua;         // Couleur du lien externe
internalLinkRatio = 0.3;            // Ratio de couleur interne par rapport à l'externe (0=>1)
linkDistanceMin = 100;              // Distance minimum du lien pour la puissance max
linkDistanceMax = 500;              // Distance maximum à partir de la quelle le lien casse.
linkPower = 1;                      // Puissance du lien (0=>1)
linkWeightMin = 5;                  // Epaisseur du lien à puissance minimum.
linkWeightMax = 13;                 // Epaisseur du lien à puissance maximale.
maxLinkDuration = 7;                // Durée maximale du lien.
linkEnergyDegen = -1;           // Dimunition d'énergie par seconde si lié.
linkedHeros = ds_list_create();     // liste des héros liés à nous meme (qui nous boostent)
overChargedDegen = -1;             // Diminution d'énergie par seconde si surchage d'énergie (currentEnergy > currentMaxEnergy)

//RESURECT 
resurectAllie = noone;
resurectDuration = 3*room_speed;
countdownResurection = noone;

// ALARMs
alarm [0] = -1;                      // Timer to delay bullets
alarm [1] = 1;                      // Timer to send coordinates to server
alarm [2] = -1;                      // Timer of dash cooldown
alarm [3] = -1;                      // durée du dash
alarm [5] = 0.5 * room_speed;       // Regénération
alarm [7] = -1;                     // compte a rebours du fire2
alarm [8] = -1;                      //particules emitter cd

// Data structures
sprites = ds_map_create();
imageSpeeds = ds_map_create();

///créer ses propres jambes
if(legs_type!=noone)
{
    legs=instance_create(x,y,legs_type);	
}

if(!instance_exists(obj_camera)) then instance_create(x,y,obj_camera);

var instance = instance_create_depth(x,y,depth,obj_aimLaser)
instance.hero = id;


////particules
scr_createLowLifeParticuleSystem()

