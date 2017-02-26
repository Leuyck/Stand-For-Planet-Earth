///scr_keepDoorOpen(obj who keep open)

var openingObject = argument[0];

if(instance_exists(openingObject))
{
    if(point_in_circle(openingObject.x,openingObject.y,x,y,detectionRange) && doorOpen && image_index == image_number-1)
    {
        alarm[0] = -1;
        alarm[1] = stayOpenTime * room_speed
        alarm[2] = -1;
        
        image_speed = 0;
        image_index = image_number - 1;
        
    }
    if(point_in_circle(openingObject.x,openingObject.y,x,y,detectionRange) && doorOpen && alarm[2] != -1 && alarm[1] == -1)
    {
        var openSpeed = (image_number - 1) / (openTime * room_speed);
             
        alarm[0] = openTime * room_speed;
        alarm[1] = -1;
        alarm[2] = -1;
        image_speed = openSpeed;
    }
}
