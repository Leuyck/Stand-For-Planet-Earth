/// scr_fire2CheckBatBot();
if(fire2 && !recuperation)
{
    mouse_clear(mb_right);
    
    if(numberOfBatte != 0)
    {
        var batteType = obj_bullet_batte_d
    
        if(numberOfBatte == 2) 
        {
            batteType = obj_bullet_batte_d
            ds_map_replace(sprites,"firing2",spr_BatBot_fire2_d);
        }
        if(numberOfBatte == 1) 
        {
            batteType = obj_bullet_batte_g
            ds_map_replace(sprites,"firing2",spr_BatBot_fire2_g);
        }  
        if (alarm[7] <= 0)
        {
            for (var i = 0; i < 1; i++) 
            {
                scr_createAndSendNewBullet(id, batteType, "hero")
            } 
            alarm[7] = room_speed/shot2PerSec;
        }
        state = "firing2"
        image_index = 0;
        alarm[8] = recuperationDuration2
        recuperation = true;
        numberOfBatte--;
    }
}

