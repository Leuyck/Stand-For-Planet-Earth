/// @description 
freeze=false;
enable = false;
buttonNumber = 0;
gamepadNumber = -1;

heroLock = false;
heroSelected = noone;

availableHero = ds_list_create();
ds_list_add(availableHero,obj_BatBot);
ds_list_add(availableHero,obj_PetBot);
ds_list_add(availableHero,obj_BadaBot);
ds_list_add(availableHero,obj_EngiBot);