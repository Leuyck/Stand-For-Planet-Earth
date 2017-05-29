///scr_exitLevel(roomToGo)
var roomToGo=argument[0]
with(obj_localPlayer)
{
    instance_destroy();
}
scr_closeConnectionToServer();
instance_create(x,y,obj_cleaningRoom);
obj_cleaningRoom.roomToGo = roomToGo;
