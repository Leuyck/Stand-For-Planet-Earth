room_persistent = false;

if(roomToClean >= 0)
{
	if( room !=ds_list_find_value(obj_roomsMemory.ds_roomCrossed,roomToClean))
	{
		room_goto(ds_list_find_value(obj_roomsMemory.ds_roomCrossed,roomToClean));
	}
    roomToClean--;
}
else
{
    room_goto(roomToGo);
    instance_destroy()
}

