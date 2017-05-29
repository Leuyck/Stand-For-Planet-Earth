///initialize some variables;
parent = noone;
distanceFromParent = 100;
state = "passive"
job = "patrol";

tankSpace = 20;
currentTankFuel = 0;
full = false;

//ATTACK
attackRange = 50;
ticDuration = 1*room_speed;
damagePerTic = 10

target = noone;

//MOVEMENT SPEED
maxSpd = 10;
spd = 0;
accelerationSpdPerFrame = 0.5
acceleration = true;

// PATH
path = path_add();                  // Chemin de déplacement
DEBUG_PATH = false                  // Affichage des chemins
grid = obj_grid.grid;

// PATROL
patrolRange = 100;                  // Distance de patrouille
patrolPauseTime = 0.5;
patrolx = x;
patroly = y;
patrolPaused = true;

// alarms
alarm [0] = -1;                     // Pause during move
alarm [1] = 1;
alarm [2] = -1;						//Attack delay

sprites = ds_map_create();
imageSpeeds = ds_map_create();

ds_map_add(sprites, "passive", spr_PetDrone_passive);
ds_map_add(sprites, "swapping", spr_PetDrone_swap);
ds_map_add(sprites, "hitting", spr_PetDrone_hit);
ds_map_add(sprites, "empty", spr_PetDrone_empty);
ds_map_add(sprites, "full", spr_PetDrone_full);

ds_map_add(imageSpeeds, "passive", 0.25);
ds_map_add(imageSpeeds, "swapping", 0.25);
ds_map_add(imageSpeeds, "hitting", 0.25);
ds_map_add(imageSpeeds, "empty", 0.25);
ds_map_add(imageSpeeds, "full", 0.25);


