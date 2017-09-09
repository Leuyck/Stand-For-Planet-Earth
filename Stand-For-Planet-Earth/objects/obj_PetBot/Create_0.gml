event_inherited();

// Overrides default values
runningMaxSpd = 7;
enableLegs = true;
legs_type = obj_PetBot_jambes;
legsImageSpeed = 0.5;

enableDeploy = true;

weaponPosX = 97;
weaponPosY = 23;
shot1PerSec = 3 ;                        //nombre de tir par sec
shot1_bullet_count = 1;                 // Nombre de balles
shot1_bullet_type = obj_bullet_PetBot;        // Type de balle
precision = 3;                          // Précision

scr_setFireImageSpeed(spr_PetBot_shot,shot1PerSec);
scr_setMoveImageSpeed(spr_PetBot_move,walkingMaxSpd);

ds_map_add(sprites, "deploying", spr_PetBot_deploy);
ds_map_add(sprites, "standing", spr_PetBot_move);
ds_map_add(sprites, "walking", spr_PetBot_move);
ds_map_add(sprites, "dashing", spr_PetBot_move);
ds_map_add(sprites, "firing1", spr_PetBot_shot);
ds_map_add(sprites, "dead", spr_PetBot_dead);

ds_map_add(imageSpeeds, "deploying", 0.5);
ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 1);
ds_map_add(imageSpeeds, "dead", 0.5);

alarm[6] = -1

///créer ses propres jambes

if(enableLegs)
{
    legs=instance_create(x,y,legs_type);
}

pet = instance_create(x+random_range(-100,100),y+random_range(-100,100), obj_PetDrone);
pet.parent = id;