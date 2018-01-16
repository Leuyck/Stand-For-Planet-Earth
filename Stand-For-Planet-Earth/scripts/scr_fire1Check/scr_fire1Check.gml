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
				audio_play_sound(fire1Sound,1,false)
            } 
            alarm[0] = room_speed/shot1PerSec;
        }
    }
}