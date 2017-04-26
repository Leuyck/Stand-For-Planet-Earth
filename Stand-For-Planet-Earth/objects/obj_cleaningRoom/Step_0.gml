room_persistent = false;

if(roomToClean >= 0)
{
    room_goto(ds_list_find_value(obj_roomsMemory.ds_roomCrossed,roomToClean));
    roomToClean--;
}
else
{
    //scr_closeConnectionToServer();
    room_goto(rm_mainMenu);
    instance_destroy()
}

