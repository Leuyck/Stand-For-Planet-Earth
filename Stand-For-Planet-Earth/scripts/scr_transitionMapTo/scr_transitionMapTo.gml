///scr_transitionMapTo(Map)

var map = argument[0]

if (!instance_exists (obj_roomTransition))
{
    var tempRoomFade;
    tempRoomFade = instance_create (x, y ,obj_roomTransition);
    tempRoomFade.tempTarget = map;
}