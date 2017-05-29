if(access) then obj_chose_hero_information.currentMap = room_get_name(roomName);
else  scr_showNotification("The room " + room_get_name(roomName) + " is not available", c_red);


