///scr_openDoor (door, button, openTime, openSpeed)

door = argument[0]
button = argument[1]
openTime = argument [2]
openSpeed = argument[3]




if (place_meeting(x,y,button) && keyboard_check(ord("E")))
{
    door.openSpeed = openSpeed ;
    door.alarm[0] = openTime * room_speed;
}
