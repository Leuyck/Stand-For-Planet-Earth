///scr_fire1CheckBatBot()
if(fire1 && !dashing && !fire2 && deployed) 
{  
    if (numberOfBatte==2)
    {
        state = "firing1"
        if(alarm[0] <= 0) 
        {        
            for (var i = 0; i < shot1_bullet_count; i++) 
            {
                scr_createAndSendNewBullet(id, shot1_bullet_type, "hero")
            } 
            alarm[0] = room_speed/shot1PerSec1;
            alarm[8] = recuperationDuration1
            recuperation = true;
        }
        if fire1_droite then ds_map_replace(sprites, "firing1", spr_BatBot_fire1_d);
        else ds_map_replace(sprites, "firing1", spr_BatBot_fire1_g);
        
        if (fire1_droite && image_index >= image_number -2)
        {
            fire1_droite=false;
            image_index=0;     
        }
        else if (!fire1_droite && image_index >= image_number -2)
        {
            fire1_droite=true;
            image_index=0;    
        }
    }
    if(numberOfBatte == 1)
    {
        ds_map_replace(sprites, "firing1", spr_BatBot_fire1_gg);
        state = "firing1"
        if(alarm[0] <= 0) 
        {
            for (var i = 0; i < shot1_bullet_count; i++) 
            {
                scr_createAndSendNewBullet(id, shot1_bullet_type, "hero")
            } 
            alarm[0] = room_speed/shot1PerSec2;
            alarm[8] = recuperationDuration1
            recuperation = true;
        }     
    }
}

