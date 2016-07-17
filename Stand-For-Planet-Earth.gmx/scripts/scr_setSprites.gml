// set sprite and sprite index

/*if (jumping)
{
    sprite_index = spr_player_jump;
    image_speed = 0.1;
}
if (falling)
{
    sprite_index = spr_player_jump;
    image_index=1
    image_speed = 0;
}
*/
if (!jumping /*&& !falling*/)
{
    switch(state)
    {
        case "standing" :
            sprite_index = spr_hero1_stand;
            image_speed = 0.25
        break;
        
        case "walking" :
            sprite_index = spr_hero1_move;
            image_speed = 0.25
        break;
        
        case "running" :
            sprite_index = spr_hero1_move;
            image_speed = 0.5
        break;
        
        case "firing" :
            sprite_index = spr_hero1_shot;
            image_speed = 0.5
                
            
      /*  case "ducking" :
                sprite_index = spr_player_duck;
                image_index = 0
        break;
        */
    
    }
}

switch (dir)
{
    case "left" :
        image_xscale = -1;
    break;
    case "right" :
        image_xscale = 1;
    break;
}
