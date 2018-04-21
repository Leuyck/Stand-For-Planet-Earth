/// @description 
if(glitchedSprite != noone){
	sprite_delete(glitchedSprite);
}
if(copiedSprite != noone){
	sprite_delete(copiedSprite);
}
copiedSprite = noone
glitchedSprite = noone;

alarm[1] = irandom_range(2,15);