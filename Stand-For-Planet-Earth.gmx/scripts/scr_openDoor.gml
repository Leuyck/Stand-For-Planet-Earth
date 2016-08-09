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
        if (alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1)
        {
            var openSpeed = (image_number-1) /(openTime * room_speed);
         
            alarm[0] = openTime*room_speed;
            image_speed = openSpeed;
        }
    }
}
