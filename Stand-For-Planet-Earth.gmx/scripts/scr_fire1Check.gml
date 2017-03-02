///scr_fire1Check()
standardFire1 = argument[0];

if (standardFire1)
{
    if(fire1 && !dashing && !fire2 && deployed) 
    {   
        state = "firing"
        if(alarm[0] <= 0) 
        {
            image_index = 0;
        
            for (var i = 0; i < shot1_bullet_count; i++) 
            {
                scr_createAndSendNewBullet(id, shot1_bullet_type, "hero")
            } 
            alarm[0] = room_speed/shot1PerSec;
            alarm[8] = recuperationDuration1;
            recuperation = true;
        }
    }
}
