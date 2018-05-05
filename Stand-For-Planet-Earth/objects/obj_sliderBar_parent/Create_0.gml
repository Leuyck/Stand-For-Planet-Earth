/// @description 
event_inherited();
locked = false;

name = "";
percentage = 100;
incrementationSpeed = 1;

rightLimit = x+ sprite_get_width(sprite_index)/2 -30;
leftLimit = x- sprite_get_width(sprite_index)/2 +30;

sliderPosition = leftLimit +((percentage/100) * (rightLimit-leftLimit));

grab = false;
xx=0;

alarm[1] = -1;