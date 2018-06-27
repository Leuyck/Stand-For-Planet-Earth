///scr_setFireImageSpeed(Sprite du Fire1, vitesse de tir)

var fire1Sprite = argument[0];
var shotPerSec = argument[1];

var fire1DrawSpeed = sprite_get_number(fire1Sprite)*shotPerSec;

if(sprite_get_speed(fire1Sprite) != fire1DrawSpeed){
	sprite_set_speed(fire1Sprite,fire1DrawSpeed,spritespeed_framespersecond);
}
