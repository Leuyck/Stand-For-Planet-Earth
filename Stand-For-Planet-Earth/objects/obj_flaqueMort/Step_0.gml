/// @description 
/// @description 
if(genre =="humain" && sprite_index==noone){
	sprite_index = spr_membreMortHumain_sang;
	image_index = irandom_range(0,2);
}else if(genre =="robot" && sprite_index==noone){
	sprite_index = spr_membreMortRobot_huile;
	image_index = irandom_range(0,2);
}