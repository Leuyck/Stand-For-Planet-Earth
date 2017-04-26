if (global.inWorld == true)
{
    var mapInstance = asset_get_index(room_get_name(room));
    if(ds_list_find_index(ds_roomCrossed,mapInstance) <0)
    {
        ds_list_add(ds_roomCrossed,mapInstance);
    }
}

