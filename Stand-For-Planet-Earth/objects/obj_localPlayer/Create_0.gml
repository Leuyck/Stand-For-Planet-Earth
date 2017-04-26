///initialize some variables

playerId = noone;                   // Id du hero
playerName = "";                    // Nom du hero
state = "standing";                 // Etat permettant de choisir les sprites et l'image speed
depth = -100;

// MOVE
walkingMaxSpd = 10;                 // Vitesse de déplacement max
enableLegs = false;                 //activer les jambes
legs_type = noone;                  //sprite des jambes
legsImageSpeed = 1;
canMove = true;

// DEPLOY
enableDeploy = false;
deployed = false;

// WEAPON
weaponPosX = 185                    //différence de position entre X et weaponX
weaponPosY = -4                      //différence de position entre Y et weaponY
enableStandardFire1 = true;         //utilisation du mode de tir standard
fire1 = false;   
fire2 = false;  
shot1PerSec = 5;  
shot2PerSec = 2;                   // Nombre de tir par seconde
shot1_bullet_count = 1;             // Nombre de balles
shot1_bullet_type = obj_bullet3;    // Type de balle
precision = 3;                      // Précision de tir
cooldownFire2 = 0
energyCostForFire2 = 100            // cout d'utilisation de fire2
staticFire2 = false;

scr_setFire1SpeedAndDuration(spr_hero1_shot)
scr_setFire2SpeedAndDuration(spr_hero1_shot)

// DASH
dashing = false;
dashTime = 0.3;                     // durée de dash
dashSpeed = 3 * walkingMaxSpd       // Vitesse de déplacement pendant le dash             
dashNumber = 2;                     // Nombre de dash possible d'affilée
dashCooldown = 2;                   // Temps d'attente avant d'obtenir un nouveau dash

//BUMP
bump=false;

// HEALTH
maxHealth = 100
currentHealth = maxHealth;
healthRegen = 0;                    // Regénération par seconde
currentHealthRegen = healthRegen;

// ENERGY
maxEnergy = 100;                    // Max énergie défaut
currentMaxEnergy = maxEnergy;       // Max énergie courante
currentEnergy = maxEnergy
energyRegen = 5;                    // Regénération par seconde
currentEnergyRegen = energyRegen;

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
linkEnergyDegen = -100/7;           // Dimunition d'énergie par seconde si lié.
linkedHeros = ds_list_create();     // liste des héros liés à nous meme (qui nous boostent)
overChargedDegen = -50;             // Diminution d'énergie par seconde si surchage d'énergie (currentEnergy > currentMaxEnergy)

// ALARMs
alarm [0] = -1;                      // Timer to delay bullets
alarm [1] = 1;                      // Timer to send coordinates to server
alarm [2] = -1;                      // Timer of dash cooldown
alarm [3] = -1;                      // durée du dash
alarm [5] = 0.5 * room_speed;       // Regénération
alarm [7] = -1;                     // compte a rebours du fire2
alarm [8] = -1;                      //récupération

// Data structures
sprites = ds_map_create();
imageSpeeds = ds_map_create();

///créer ses propres jambes
if(enableLegs)
{
    legs=instance_create(x,y,legs_type);
}

///creation de l'obj_localPlayer_tracker

instance_create(x, y, obj_localPlayer_tracker);

