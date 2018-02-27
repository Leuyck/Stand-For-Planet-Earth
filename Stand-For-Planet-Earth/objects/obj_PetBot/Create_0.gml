event_inherited();
// Overrides default values


weaponPosX = 90;
weaponPosY = 23;

scr_setFireImageSpeed(spr_PetBot_shot,shot1PerSec);
scr_setMoveImageSpeed(spr_PetBot_move,walkingMaxSpd,256);
scr_setMoveImageSpeed(spr_PetBot_jambes,walkingMaxSpd,256);

ds_map_add(sprites, "deploying", spr_PetBot_deploy);
ds_map_add(sprites, "standing", spr_PetBot_move);
ds_map_add(sprites, "walking", spr_PetBot_move);
ds_map_add(sprites, "dashing", spr_PetBot_move);
ds_map_add(sprites, "firing1", spr_PetBot_shot);
ds_map_add(sprites, "dead", spr_PetBot_mort);

ds_map_add(imageSpeeds, "deploying", 0.5);
ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 1);
ds_map_add(imageSpeeds, "dead", 1);

alarm[6] = -1

///créer ses propres jambes

if(legs_type!=noone)
{
    legs=instance_create(x,y,legs_type);
}

petList = ds_list_create();
for(var i =0; i<3; i++){
	pet = instance_create_depth(x+random_range(-100,100),y+random_range(-100,100),depth-1, obj_PetDrone);
	pet.parent = id;
	ds_list_add(petList,pet);
}

///light shadow
scr_createLightCollisionCircle(26,60,19,126);
