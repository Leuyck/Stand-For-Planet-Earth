event_inherited();

relativeBoutCanonX = 158-130;
relativeBoutCanonY = 0;

loadingFire1Time = (shot1PerSec*room_speed)-(sprite_get_number(spr_plasmaBawl_shot)-4)
releaseBullet = false;

shieldSize = 1;                     // taille du shield
shieldBuffFactor = 0.65             // facteur de grossissement du shield par allié linkés

scr_setFireImageSpeed(spr_BadaBot_fire2,shot2PerSec);
scr_setMoveImageSpeed(spr_BadaBot_move,currentSpeed,256);
scr_setMoveImageSpeed(legs_type,currentSpeed,256);

spriteFire2 = sprite_duplicate(spr_BadaBot_fire2);
sprite_set_offset(spriteFire2, 158, 133);
sprite_collision_mask(spriteFire2,false,2,158-44,133-44,158+44,133+44,2,0)
				

ds_map_add(sprites, "deploying", spr_BadaBot_deploy);
ds_map_add(sprites, "standing", spr_BadaBot_stand);
ds_map_add(sprites, "walking", spr_BadaBot_move);
ds_map_add(sprites, "dashing", spr_BadaBot_move);
ds_map_add(sprites, "dead", spr_BadaBot_mort);
ds_map_add(sprites, "notDeployed",spr_BadaBot_stand);
ds_map_add(sprites, "firing2", spr_BadaBot_fire2);
//ds_map_add(sprites, "firing1", spr_BadaBot_stand);

ds_map_add(imageSpeeds, "deploying", 1);
ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "dead", 1);
ds_map_add(imageSpeeds, "notDeployed",0);
ds_map_add(imageSpeeds, "firing2", 1);	
//ds_map_add(imageSpeeds, "firing1", 1);	


alarm[4]=-1 //loadingFire1 alarm;
alarm[6] = -1;

///light shadow
scr_createLightCollisionCircle(108,208,114,214);

plasmaBawl = instance_create_depth(x,y,depth-1,obj_plasmaBawl);
plasmaBawl.parent = id;