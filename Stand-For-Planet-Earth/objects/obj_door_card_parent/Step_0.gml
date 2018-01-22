/// @description 

// Inherit the parent event
event_inherited();

alerteMessage = 0;

var distanceToOpen = 50;

if(!doorOpen && instance_exists(cardToOpen)){
	var carrier = cardToOpen.id.carryBy;
	with(obj_localPlayer){
		if(distance_to_point(other.x,other.y)<distanceToOpen){
			if(self.id == carrier){
				with(other){
					if(carrier.useKey){
						if (alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1)
						{
							alarm[0] = openTime * room_speed;
							var openSpeed = (image_number - 1) / (openTime * room_speed);
							image_speed = openSpeed;
							doorOpen = true;
							
							with(cardToOpen){
								instance_destroy();	
							}
						}
					}else{
						alerteMessage = 2;	
					}
					exit;
				}
			}else{
				other.alerteMessage = 1;	
			}
		}
	}
}