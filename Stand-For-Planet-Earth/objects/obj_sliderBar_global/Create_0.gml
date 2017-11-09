/// @description 
event_inherited();

name = "Global";

ini_open("settings.ini");
percentage = ini_read_real("AUDIO SETTING",name,100)
ini_close();

sliderPosition =leftLimit +((percentage/100) * (rightLimit-leftLimit));