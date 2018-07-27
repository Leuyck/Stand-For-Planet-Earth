///scr_fire1CheckBatBot()

if(fire1 && !dashing && !fire2 && deployed && state!="dead" && resurectAllie == noone) 
{  
    if (numberOfBatte != 0)
    {
        state = "firing1";
    }
    if (numberOfBatte==2)
    {
        if fire1_droite then ds_map_replace(sprites, "firing1", spr_BatBot_fire1_d);
        else ds_map_replace(sprites, "firing1", spr_BatBot_fire1_g);
        
        if (fire1 && image_index >= image_number -2)
        {
            fire1_droite = !fire1_droite;  
        }
    }
    else if (numberOfBatte == 1)
    {
        ds_map_replace(sprites, "firing1", spr_BatBot_fire1_gg);
    }
}

if(state=="firing1")
{
    if(alarm[0] <= 0 && fire1) 
    {        
        for (var i = 0; i < shot1_bullet_count; i++) 
        {
            scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", false)
			audio_play_sound(fire1Sound,1,false)
        } 
        
		var numberOfShotPerSec1 = (shot1PerSec+bonusSpeed*attackSpeedBonusFactor*shot1PerSec)
		var numberOfShotPerSec2 = (shot1PerSec2+bonusSpeed*attackSpeedBonusFactor*shot1PerSec)
		
        if(numberOfBatte == 2) then alarm[0] = room_speed/numberOfShotPerSec1 - 2*(sprite_get_speed(spr_BatBot_fire1_d)/room_speed) //soustrait le temps pris par les 2 images de trop;
        if(numberOfBatte == 1) then alarm[0] = room_speed/numberOfShotPerSec2;
        
		scr_setFireImageSpeed(spr_BatBot_fire1_d,numberOfShotPerSec1)
		scr_setFireImageSpeed(spr_BatBot_fire1_g,numberOfShotPerSec1)
		scr_setFireImageSpeed(spr_BatBot_fire1_gg,numberOfShotPerSec2)
        image_index=0;
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
            fire1_droite = !fire1_droite;
        }
    }
}

