///initialize some variables
size = 2;

controller = noone;					//id of controller;
playerNumber = -1;
playerId = noone;                   // Id du hero
playerName = "";                    // Nom du hero
state = "standing";                 // Etat permettant de choisir les sprites et l'image speed
depth = 0;

// On met le player en solid, les npcs ne pourront pas
// se superposer avec lui.
solid = true;

// MOVE
currentSpeed = walkingMaxSpd;
objectBlockingMovement=scr_createobjectBlockingMovementList();

// DEPLOY
deployed = false;

// WEAPON                    
relativeBoutCanonX = 185			//différence de position entre X et weaponX
relativeBoutCanonY = -4				//différence de position entre Y et weaponY
currentMunition = maxMunition
scr_setFireImageSpeed(spr_hero1_shot,shot1PerSec)

// DASH
dashing = false;
dashTime = 0.3;                     // durée de dash
dashSpeed = 3 * currentSpeed       // Vitesse de déplacement pendant le dash             
dashNumber = 2;                     // Nombre de dash possible d'affilée
dashCooldown = 2;                   // Temps d'attente avant d'obtenir un nouveau dash
dashTargetX = noone;
dashTargetY = noone;

//BUMP
bump=false;

// HEALTH
maxHealth = 12;
currentHealth = maxHealth;
percentOfOneHp = 0;


// ENERGY
maxEnergy = 3;                    // Max énergie défaut
currentMaxEnergy = maxEnergy;       // Max énergie courante
currentEnergy = maxEnergy
energyRegen = 0.5;                    // Regénération par seconde
currentEnergyRegen = energyRegen;
pauseEnergyRegen = false;
energyStack = 0;					//Stack l'énergie par 1 pour la regen.

// LINK
linkTarget = noone;                 // Lien de la cible à lier
internalLinkColor = c_red;          // Couleur du lien interne
externalLinkColor = c_aqua;         // Couleur du lien externe
internalLinkRatio = 0.3;            // Ratio de couleur interne par rapport à l'externe (0=>1)
linkDistanceMin = 100;              // Distance minimum du lien pour la puissance max
linkDistanceMax = 1000;              // Distance maximum à partir de la quelle le lien casse.
linkPower = 1;                      // Puissance du lien (0=>1)
linkWeightMin = 5;                  // Epaisseur du lien à puissance minimum.
linkWeightMax = 13;                 // Epaisseur du lien à puissance maximale.
linkEnergyDegen = -3*energyRegen;	// Dimunition d'énergie par seconde si lié.
linkedHeros = ds_list_create();     // liste des héros liés à nous meme (qui nous boostent)
overChargedDegen = -0.5;             // Diminution d'énergie par seconde si surchage d'énergie (currentEnergy > currentMaxEnergy)
timePerEnergyTic = 1 * room_speed;

//RESURECT 
resurectAllie = noone;
resurectDuration = 3*room_speed;
countdownResurection = noone;

//DROPED FROM VEHICLE
onSpawnVehicle = false;

///BONUS
bonusList = ds_list_create();
ds_list_add(bonusList,noone,noone);
bonusInvincible = false;
bonusSpeed = false;
bonusEnergy = false;
currentInvincibiliteDuration = -1;
currentSpeedDuration = -1;
currentEnergyDuration = -1;

//FX
glitch = noone;

// ALARMs
alarm [0] = -1;                      // Timer to delay bullets
alarm [1] = 1;                      // Timer to send coordinates to server
alarm [2] = -1;                      // Timer of dash cooldown
alarm [3] = -1;                      // durée du dash
alarm [4] = -1;                      // durée des tic du link
alarm [5] = 0.5 * room_speed;       // Regénération
alarm [7] = -1;                     // compte a rebours du fire2
alarm [8] = -1;                      //particules emitter cd

// Data structures
sprites = ds_map_create();
imageSpeeds = ds_map_create();

///créer ses propres jambes
if(legs_type!=noone){
	legs = instance_create_depth(x,y,depth+1,obj_localPlayer_jambes);	
	legs.sprite_index = legs_type;
	//legs.image_xscale = 1.5;
}


if(!instance_exists(obj_camera)) then instance_create(x,y,obj_camera);

var instance = instance_create_depth(x,y,depth,obj_aimLaser)
instance.hero = id;

if(self.object_index != obj_BatBot){
	compteurMunition = instance_create_depth(x+relativeBoutCanonX,y+relativeBoutCanonY,depth-1,obj_compteurMunition);
	compteurMunition.parent = self.id;
	compteurMunition.maxMunition = maxMunition;
}

////particules
scr_createLowLifeParticuleSystem()