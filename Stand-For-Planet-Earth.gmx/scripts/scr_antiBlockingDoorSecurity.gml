///scr_antiBlockingDoorSecurity(obj who open, isDoorAutomatic)

var openingObject = argument[0];
var automaticDoor = argument[1];

if(instance_exists(openingObject))
{
    if(automaticDoor)
    {
        if(point_in_circle(openingObject.x,openingObject.y,x,y,detectionRange)&& !doorOpen)
        {
            alarm[0] = openTime * room_speed;
            alarm[1] = -1;
            alarm[2] = -1;
        
            var openSpeed = (image_number - 1) / (openTime * room_speed);
            image_speed = openSpeed;
            doorOpen=true;
        }
    }
    if(point_in_circle(openingObject.x,openingObject.y,x,y,detectionRange) 
        && doorOpen && image_index >= image_number-1)
    {
        alarm[0] = -1;
        alarm[1] = stayOpenTime * room_speed
        alarm[2] = -1;
        
        image_speed = 0;
        image_index = image_number - 1;
        
    }
    if(point_in_circle(openingObject.x,openingObject.y,x,y,detectionRange) 
        && doorOpen && alarm[2] >0)
    {
        alarm[0] = openTime * room_speed;
        alarm[1] = -1;
        alarm[2] = -1;
    
        var openSpeed = (image_number - 1) / (openTime * room_speed);
        image_speed = openSpeed;
        doorOpen=true;
    }
}

