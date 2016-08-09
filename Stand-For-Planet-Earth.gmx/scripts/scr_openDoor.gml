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
        var openSpeed = (image_number-1) /(openTime * room_speed);
     
        alarm[0] = openTime*room_speed;
        image_speed = openSpeed;
        //alarm[1] = alarm[0] + stayOpenTime*room_speed
        //alarm[2] = alarm[0] + alarm[1] + closeTime*room_speed
    }
}
