/// @description 
freeze=false;
enable = false;
buttonNumber = 0;
controller = noone;

heroLock = false;
heroSelected = noone;

availableHero = ds_list_create();
ds_list_add(availableHero,obj_BatBot);
ds_list_add(availableHero,obj_PetBot);
ds_list_add(availableHero,obj_RoomCreator);
ds_list_add(availableHero,obj_BadaBot);
ds_list_add(availableHero,obj_EngiBot);