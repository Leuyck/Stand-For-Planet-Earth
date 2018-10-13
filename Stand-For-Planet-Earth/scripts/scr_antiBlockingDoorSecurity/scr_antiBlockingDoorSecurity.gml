///scr_antiBlockingDoorSecurity(obj who open)

var openingObject = argument[0];

if(collision_circle(x,y,detectionRange,openingObject,false,true)!=noone){
    if(automaticDoor && image_index == 0){
		alarm[0] = openTime * room_speed;
        alarm[1] = -1;
        alarm[2] = -1;
    
        image_speed = openSpeed;
	}
	if(doorOpen && image_index >= image_number-1){
		alarm[0] = -1;
        alarm[1] = stayOpenTime * room_speed
        alarm[2] = -1;
            
        image_speed = 0;
        image_index = image_number - 1;
			
		if(openingObject == obj_localPlayer){
			var myid = id
			with(obj_warFog){
				if(place_meeting(self.x,self.y,myid.id) && self.enabled == false){
					self.enabled = true;
				}
			}	
		}
	}
	if(doorOpen && alarm[2] >0){
        alarm[0] = openTime * room_speed;
        alarm[1] = -1;
        alarm[2] = -1;
    
        image_speed = openSpeed;
    }
}