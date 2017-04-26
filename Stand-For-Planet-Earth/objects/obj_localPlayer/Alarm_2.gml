///dash recuperation delay alarm

if (dashNumber < 2)
{
    dashNumber++
    alarm[2] = dashCooldown * room_speed;
}

else if(dashNumber == 2)
{
    alarm[2] = -1;
}


