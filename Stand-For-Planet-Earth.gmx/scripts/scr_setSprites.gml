// set sprite and sprite index

if (!jumping /*&& !falling*/)
{
    sprite_index = ds_map_find_value(sprites, state);
    image_speed = ds_map_find_value(imageSpeeds, state);    
}

