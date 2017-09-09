///@description scr_setMoveImageSpeed(sprite,moveSpd)

var sprite = argument[0];
var walkingSpd = argument[1];

var distPerSec = room_speed * walkingSpd;
var animPerSec = distPerSec/256;
var imSpd = animPerSec*sprite_get_number(sprite);
sprite_set_speed(sprite,imSpd,spritespeed_framespersecond);