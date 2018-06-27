///scr_antiBlockingDoorSecurity(obj who open, isDoorAutomatic)

var openingObject = argument[0];
var automaticDoor = argument[1];

if(instance_exists(openingObject))
{
    with (openingObject)
    {
        if(automaticDoor)
        {
            if(point_in_circle(self.x,self.y,other.x,other.y,other.detectionRange)&& other.image_index == 0)
            {
                other.alarm[0] = other.openTime * room_speed;
                other.alarm[1] = -1;
                other.alarm[2] = -1;
    
                other.image_speed = other.openSpeed;
				
            }
        }
        if(point_in_circle(self.x,self.y,other.x,other.y,other.detectionRange) 
            && other.doorOpen && other.image_index >= other.image_number-1)
        {
            other.alarm[0] = -1;
            other.alarm[1] = other.stayOpenTime * room_speed
            other.alarm[2] = -1;
            
            other.image_speed = 0;
            other.image_index = other.image_number - 1;
			
			if(openingObject == obj_localPlayer){
				var myid = other.id
				with(obj_warFog){
					if(place_meeting(self.x,self.y,myid.id) && self.enabled == false){
						self.enabled = true;
					}
				}	
			}
        }
        if(point_in_circle(self.x,self.y,other.x,other.y,other.detectionRange) 
            && other.doorOpen && other.alarm[2] >0)
        {
            other.alarm[0] = other.openTime * room_speed;
            other.alarm[1] = -1;
            other.alarm[2] = -1;
    
            other.image_speed = other.openSpeed;
        }
    }
}

