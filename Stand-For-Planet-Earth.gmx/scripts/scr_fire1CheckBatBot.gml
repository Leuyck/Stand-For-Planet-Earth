///scr_fire1CheckBatBot()

if(fire1 && !dashing && !fire2 && deployed) 
{  
    if (numberOfBatte != 0)
    {
        state = "firing1";
    }
    if (numberOfBatte==2)
    {
        if fire1_droite then ds_map_replace(sprites, "firing1", spr_BatBot_fire1_d);
        else ds_map_replace(sprites, "firing1", spr_BatBot_fire1_g);
        ds_map_replace(imageSpeeds, "firing1", fire1SpriteSpeed);
        
        if (fire1 && image_index >= image_number -2)
        {
            fire1_droite = !fire1_droite;
            image_index=0;   
        }
    }
    else if (numberOfBatte == 1)
    {
        ds_map_replace(sprites, "firing1", spr_BatBot_fire1_gg);
        var fire1SpriteSpeed1Batte = (shot1PerSec2*sprite_get_number(spr_BatBot_fire1_gg))/room_speed;
        ds_map_replace(imageSpeeds, "firing1", fire1SpriteSpeed1Batte);
    }
}

if(state=="firing1")
{
    if(alarm[0] <= 0 && fire1) 
    {        
        for (var i = 0; i < shot1_bullet_count; i++) 
        {
            scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", false)
        } 
        
        if(numberOfBatte == 2) then alarm[0] = room_speed/shot1PerSec - (2/fire1SpriteSpeed); //soustrait le nombre d'image en moins quand l'anim s'enchaine / image_speed.
        if(numberOfBatte == 1) then alarm[0] = room_speed/shot1PerSec2;
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

