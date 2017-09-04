///scr_setFire1SpeedAndDuration(Sprite du Fire1)

fire1Sprite = argument[0];
var fire1DrawSpeed = sprite_get_number(fire1Sprite)*shot1PerSec;

sprite_set_speed(fire1Sprite,fire1DrawSpeed,spritespeed_framespersecond);

fire1SpriteSpeed=1;