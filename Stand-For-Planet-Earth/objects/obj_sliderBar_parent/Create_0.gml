/// @description 

name = "Global";

rightLimit = x+ sprite_get_width(sprite_index)/2 -30;
leftLimit = x- sprite_get_width(sprite_index)/2 +30;

percentage = 100;
sliderPosition =leftLimit +((percentage/100) * (rightLimit-leftLimit));
grab = false;
xx=0;
