///scr_fire1Check()
standardFire1 = argument[0];

if (standardFire1 && state !="dead")
{
    if(fire1 && !dashing && !fire2 && deployed) 
    {   
        state = "firing1"
    }
    if (state=="firing1")
    {
        if(alarm[0] <= 0 && fire1) 
        {
            image_index = 0;
        
            for (var i = 0; i < shot1_bullet_count; i++) 
            {
                scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", true)
            } 
            alarm[0] = room_speed/shot1PerSec;
        }
        if(!fire1)
        {
            if(image_index < image_number-1)
            {
                state="firing1";
            }
            else
            {
                state="standing"
            }
        }
    }
}