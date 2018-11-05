/// @description 

// Inherit the parent event
event_inherited();

var xText = x+lengthdir_x(80,image_angle-45)
var yText =  y+lengthdir_y(80,image_angle-45)
var distanceToOpen = 100;

if(!doorOpen){
	with(obj_localPlayer){
		if(distance_to_point(other.x,other.y)<distanceToOpen){
			if(other.cardToOpen==obj_card_purple){
				draw_sprite_ext(spr_msg_purpleCardNeeded,-1,xText,yText,1,1,0,c_white,1);
			}else if(other.cardToOpen==obj_card_green){
				draw_sprite_ext(spr_msg_greenCardNeeded,-1,xText,yText,1,1,0,c_white,1);
			}	
			exit;
		}
	}
}