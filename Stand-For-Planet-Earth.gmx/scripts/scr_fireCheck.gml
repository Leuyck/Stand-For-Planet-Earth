///scr_fireCheck()
if(fire1) 
{
    state = "firing";
    
    if(alarm[0] <= 0) 
    {
        for (var i = 0; i < shot1_bullet_count; i++) 
        {
            scr_createAndSendNewBullet(id, shot1_bullet_type, "hero")
        } 
        alarm[0] = shot1_delay;
    }
}
