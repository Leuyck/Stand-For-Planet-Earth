///scr_fire1Check()


if (enableStandardFire1 && state !="dead")
{
    if(fire1 && !dashing && !fire2 && deployed && currentMunition >0) 
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
			var numberOfShotPerSec = (shot1PerSec+bonusSpeed*attackSpeedBonusFactor*shot1PerSec)
            alarm[0] = room_speed/numberOfShotPerSec;
			currentMunition -= 1;
			
			scr_setFireImageSpeed(fire1Sprite,numberOfShotPerSec);
        }
    }
}
