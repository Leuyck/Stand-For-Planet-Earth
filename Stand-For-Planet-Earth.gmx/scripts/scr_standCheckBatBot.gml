/// determine if we're standing
var hspd = rightKey-leftKey;
var vspd = downKey-upKey;

if(vspd=0 && hspd=0 && !fire1 && !dashing && deployed && !recuperation)
{
    switch numberOfBatte
    {
        case 0: 
            ds_map_replace(sprites,"standing",spr_BatBot_move_0);
            break;
            
        case 1: 
            ds_map_replace(sprites,"standing",spr_BatBot_move_1);
            break;
            
        case 2: 
            ds_map_replace(sprites,"standing",spr_BatBot_move_2);
            break;
    }
    state = "standing"
    image_index = 0;
    image_speed=0;
}
