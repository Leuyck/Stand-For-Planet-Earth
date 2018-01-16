/// @description 

// Inherit the parent event
event_inherited();

if(!doorOpen){
	if(instance_exists(cardToOpen)){
		var carrier = cardToOpen.id.carryBy;
		if(distance_to_object(carrier) <= other.detectionRange){
			if (alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1)
			{
				var openSpeed = (image_number - 1) / (openTime * room_speed);
         
				alarm[0] = openTime * room_speed;
				image_speed = openSpeed;
				doorOpen = true;
				with(cardToOpen){
					instance_destroy();	
				}
			}
		}else if(distance_to_object(obj_localPlayer) <= other.detectionRange){
			alerteMessage = true;	
			alphaMessage = 1;
		}else{
			if(alphaMessage >0){
				alphaMessage-=0.03;	
			}
		}
	}
}else{
	alerteMessage = false;	
}