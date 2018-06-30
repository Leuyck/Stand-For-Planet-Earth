/// @description 

// Inherit the parent event
event_inherited();

var xText = x+lengthdir_x(80,image_angle-45)
var yText =  y+lengthdir_y(80,image_angle-45)
var font = fnt_3_large;
var distanceToOpen = 100;

if(!doorOpen){
	if(instance_exists(cardToOpen)){
		var carrier = cardToOpen.id.carryBy;
		with(obj_localPlayer){
			if(self.id == carrier && distance_to_point(other.x,other.y)<distanceToOpen){
				with(other){
					if(carrier.useKey){
						if (alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1)
						{
							alarm[0] = openTime * room_speed;
							var openSpeed = (image_number - 1) / (openTime * room_speed);
							image_speed = openSpeed;
							doorOpen = true;
						}
					}else{
						var text="Press Use";
						scr_refreshOrCreateTextGlitch(xText,yText,text,font,c_yellow,0,true,1,c_black,self.id);
					}
					exit;
				}
			}
		}
	}
	with(obj_localPlayer){
		if(distance_to_point(other.x,other.y)<distanceToOpen){
			if(other.cardToOpen==obj_card_purple){
				var text="Purple card needed";
				scr_refreshOrCreateTextGlitch(xText,yText,text,font,c_purple,0,true,1,c_black,other.id);
			}else if(other.cardToOpen==obj_card_green){
				var text="Green card needed";
				scr_refreshOrCreateTextGlitch(xText,yText,text,font,c_green,0,true,1,c_black,other.id);
			}	
			exit;
		}
	}
}

if(instance_exists(obj_text_glitch)){
	with(obj_text_glitch){
		if(self.parent== other.id)	{
			self.destroy = true;
		}
	}
}	
