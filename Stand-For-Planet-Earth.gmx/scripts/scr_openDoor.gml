///scr_openDoor(button)

var button = argument[0];
var door;

with(obj_door)
{
    if(self.doorId == button.doorId)
    {
        door = id;
    }
}

if(door != noone)
{
    with(door)
    {
        alarm[0] = stayOpenTime* room_speed + openTime*room_speed
    }
}
