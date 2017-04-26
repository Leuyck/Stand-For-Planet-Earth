///scr_checkRoomAccess(room)

roomToCheckAccess = argument[0]
var actualAccess = noone;

if(actualAccess==noone)
{
    ini_open( "savedata.ini" );
    if(ini_read_real("roomAccess", room_get_name(roomToCheckAccess),0)!=0)
    {
        actualAccess = true
    }
    else
    {
        actualAccess = false
    }
    ini_close(); 
}
return actualAccess;
