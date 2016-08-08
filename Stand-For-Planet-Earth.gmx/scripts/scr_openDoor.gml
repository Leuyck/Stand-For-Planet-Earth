///scr_openDoor(door, button, openTime, openSpeed)

var door = argument[0]
var button = argument[1]
var openingTime = argument [2]
var openSpd = argument[3]

if (place_meeting(x,y,button) && useKey)
{
   if (button.buttonId == door.doorId)
    {
        with (door)
        {
            button.owner = id;
        }
        with (button.owner)
        {
            openSpeed = openSpd ;
            alarm[0] = openingTime * room_speed;
        }
    }
}
