event_inherited();
// Overrides default values


weaponPosX = 90;
weaponPosY = 23;

fire1Sprite = spr_PetBot_shot
scr_setFireImageSpeed(fire1Sprite,shot1PerSec);
scr_setMoveImageSpeed(spr_PetBot_move,currentSpeed,256);
scr_setMoveImageSpeed(legs_type,currentSpeed,256);

ds_map_add(sprites, "deploying", spr_PetBot_deploy);
ds_map_add(sprites, "standing", spr_PetBot_move);
ds_map_add(sprites, "walking", spr_PetBot_move);
ds_map_add(sprites, "dashing", spr_PetBot_move);
ds_map_add(sprites, "firing1", spr_PetBot_shot);
ds_map_add(sprites, "dead", spr_PetBot_mort);
ds_map_add(sprites, "notDeployed", spr_PetBot_deploy);

ds_map_add(imageSpeeds, "deploying", 0.5);
ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 1);
ds_map_add(imageSpeeds, "dead", 1);
ds_map_add(imageSpeeds, "notDeployed", 1);

alarm[6] = -1

///light shadow
scr_createLightCollisionCircle(26,60,19,126);
