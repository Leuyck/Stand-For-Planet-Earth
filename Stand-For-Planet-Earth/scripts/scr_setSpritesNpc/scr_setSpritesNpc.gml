///scr_setSpritesNpc1
 
sprite_index = ds_map_find_value(sprites, state);
image_speed = ds_map_find_value(imageSpeeds, state); 

///update the speed of sprites
if (walkingSpriteSpeed != spd/20)
{
    walkingSpriteSpeed = spd/20;
    ds_map_replace(imageSpeeds, "walking",walkingSpriteSpeed);
    ds_map_replace(imageSpeeds, "chasing",walkingSpriteSpeed*2);
}
if(fire1SpriteSpeed != (shot1PerSec*sprite_get_number(fire1Sprite))/room_speed)
{
    fire1SpriteSpeed = (shot1PerSec*sprite_get_number(fire1Sprite))/room_speed;
    ds_map_replace(imageSpeeds, "firing", fire1SpriteSpeed);
    ds_map_replace(imageSpeeds, "delay_firing", fire1SpriteSpeed);
}
