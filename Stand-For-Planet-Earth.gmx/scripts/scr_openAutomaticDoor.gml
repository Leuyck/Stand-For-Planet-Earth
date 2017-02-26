///scr_openAutomaticDoor(obj who open)

var openingObject = argument[0];

if(instance_exists(openingObject))
{
    if(point_in_circle(openingObject.x,openingObject.y,x,y,detectionRange))
    {
        alarm[0] = openTime * room_speed;
        alarm[1] = -1;
        alarm[2] = -1;
    
        var openSpeed = (image_number - 1) / (openTime * room_speed);
        image_speed = openSpeed;
        doorOpen=true;
    }
    if(image_index == image_number && doorOpen == true)
    {
        image_speed = 0;
    }
}

