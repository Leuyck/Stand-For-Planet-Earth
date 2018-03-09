///initialize some variables;
parent = noone;
distanceFromParent = 100;
state = "passive"
job = "waitForAttack";



//ATTACK
attackRange = 50;
target = noone;

//TANK
tankSpace = damage;
currentTankFuel = 0;

//MOVEMENT SPEED
maxSpd = 10;
spd = 0;
accelerationSpdPerFrame = 0.5
acceleration = true;

// PATH
path = path_add();                  // Chemin de déplacement
DEBUG_PATH = false                  // Affichage des chemins

// PATROL
patrolRange = 100;                  // Distance de patrouille
patrolPauseTime = 0.1;
patrolx = x;
patroly = y;
patrolPaused = true;
patrolRectangle = scr_calculPatrolRectangle(self.x,self.y,obj_PetBot.x,obj_PetBot.y);
chasing = false;

// alarms
alarm [0] = -1;                     // Pause during move
alarm [1] = 1;

sprites = ds_map_create();
imageSpeeds = ds_map_create();

ds_map_add(sprites, "passive", spr_PetDrone_passive);
ds_map_add(sprites, "swapping", spr_PetDrone_swap);
ds_map_add(sprites, "empty", spr_PetDrone_hit);
ds_map_add(sprites, "hitting", spr_PetDrone_hit);
ds_map_add(sprites, "healing", spr_PetDrone_heal);
ds_map_add(sprites, "full", spr_PetDrone_heal);

ds_map_add(imageSpeeds, "passive", 1);
ds_map_add(imageSpeeds, "swapping", 1);
ds_map_add(imageSpeeds, "hitting", 1);
ds_map_add(imageSpeeds, "healing", 1);
ds_map_add(imageSpeeds, "empty", 0);
ds_map_add(imageSpeeds, "full", 0);

gridObject = instance_create_depth(x,y,depth,obj_grid);
gridObject.owner = id;
grid = gridObject.grid;