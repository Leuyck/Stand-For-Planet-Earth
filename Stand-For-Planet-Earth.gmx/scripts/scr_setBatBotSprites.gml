

switch numberOfBatte
{
    case 0: 
        ds_map_replace(sprites,"walking",spr_BatBot_move_0);
        ds_map_replace(sprites,"standing",spr_BatBot_move_0);
        ds_map_replace(sprites,"dashing",spr_BatBot_move_0);
        
        break;
        
    case 1: 
        ds_map_replace(sprites,"walking",spr_BatBot_move_1);
        ds_map_replace(sprites,"standing",spr_BatBot_move_1);
        ds_map_replace(sprites,"dashing",spr_BatBot_move_1);
        fire1SpriteSpeed = (shot1PerSec2*image_number)/room_speed;
        ds_map_replace(imageSpeeds, "firing1", fire1SpriteSpeed);
        break;
        
    case 2: 
        ds_map_replace(sprites,"walking",spr_BatBot_move_2);
        ds_map_replace(sprites,"standing",spr_BatBot_move_2);
        ds_map_replace(sprites,"dashing",spr_BatBot_move_2);
        fire1SpriteSpeed = (shot1PerSec1*image_number)/room_speed;
        ds_map_replace(imageSpeeds, "firing1", fire1SpriteSpeed);
        break;
}
