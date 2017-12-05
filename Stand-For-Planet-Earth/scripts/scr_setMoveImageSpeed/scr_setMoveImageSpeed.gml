///@description scr_setMoveImageSpeed(sprite,moveSpd,strideSize)

var sprite = argument[0];
var walkingSpd = argument[1];
var strideSize = argument[2]; //taille enjambée

var distPerSec = room_speed * walkingSpd;
var animPerSec = distPerSec/strideSize;
var imSpd = animPerSec*sprite_get_number(sprite);
sprite_set_speed(sprite,imSpd,spritespeed_framespersecond);