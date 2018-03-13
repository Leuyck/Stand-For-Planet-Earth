/// @description 
freeze=false;
enable = false;
buttonNumber = 0;
controller = noone;

glitchDuration = 8;
imageIndex = 0;

heroLock = false;
heroSelected = noone;

vignetteInstance = noone;

availableHero = ds_list_create();
ds_list_add(availableHero,obj_BatBot);
ds_list_add(availableHero,obj_PetBot);
ds_list_add(availableHero,obj_RoomCreator);
ds_list_add(availableHero,obj_BadaBot);
ds_list_add(availableHero,obj_EngiBot);


var fond = instance_create_depth(x,y,depth+3,obj_btn_player_fond);
fond.parent = self.id;

alarm[0] = 1*room_speed;