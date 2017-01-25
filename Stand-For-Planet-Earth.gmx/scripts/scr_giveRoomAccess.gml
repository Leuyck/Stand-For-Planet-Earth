///scr_giveRoomAccess(room)

roomToGiveAccessFor = argument[0]

ini_open( "savedata.ini" );
if(ini_read_real("roomAccess", room_get_name(roomToGiveAccessFor),0)==0)
{
    ini_write_real( "roomAccess", room_get_name(roomToGiveAccessFor),1);
}
ini_close(); 
