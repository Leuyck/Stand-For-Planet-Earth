/// scr_processFire(behaviour);

// If no remaining amo and not reloading
/*if(remainingAmoQuantity == 0 && alarm[4] == -1)
{
    alarm[4] = reloadingTime * room_speed;
    remainingAmoQuantity = amoQuantity;
    state = "reloading";
}

// If remaining amo and reloading finished
else*/ if(alarm[4] == -1)
{
    if(alarm[3] == -1) // fin de la cadence
    {
        state = "firing";
    }
    else
    {
        state = "delay_firing";
    }
}

// Else reloading
else
{
    state = "reloading";
}


if(state == "firing")
{
    for (var i = 0; i < shot1_bullet_count; i++) {
        scr_createAndSendNewBullet(id, shot1_bullet_type, "ennemi")
    }
    //remainingAmoQuantity --;
    alarm[3] = room_speed/shot1PerSec;
}

