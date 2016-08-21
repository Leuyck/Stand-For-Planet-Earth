// set sprite and sprite index

if (!jumping /*&& !falling*/)
{
    if (global.character = "hero1")
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
        }
    }
    else if (global.character = "hero2")
    {   
        switch(state)
        {
            case "standing" :
                sprite_index = spr_hero2_stand;
                image_speed = 0.25
            break;
            
            case "walking" :
                sprite_index = spr_hero2_move;
                image_speed = 0.25
            break;
            
            case "running" :
                sprite_index = spr_hero2_move;
                image_speed = 0.5
            break;
            
            case "firing" :
                sprite_index = spr_hero2_shot;
                image_speed = 0.5
        }
    }
    else if (global.character = "hero3" || global.character = "hero4")
    {
        switch(state)
            {
                case "standing" :
                    sprite_index = spr_hero3_stand;
                    image_speed = 0.25
                break;
                
                case "walking" :
                    sprite_index = spr_hero3_move;
                    image_speed = 0.25
                break;
                
                case "running" :
                    sprite_index = spr_hero3_move;
                    image_speed = 0.5
                break;
                
                case "firing" :
                    sprite_index = spr_hero3_shot;
                    image_speed = 0.15
        }
    }
    
}

