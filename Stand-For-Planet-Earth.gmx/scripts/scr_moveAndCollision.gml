hspd = rightKey-leftKey;
vspd = downKey-upKey;

var heroSpeed = 0;

if (hspd !=0 || vspd != 0)
{

    if (sprintKey)
    {
        if (!fire1)
        {
            state = "running";
        }
        heroSpeed = runningMaxSpd;
    }
    else
    {
        if (!fire1)
        {
            state = "walking";
        }
        heroSpeed = walkingMaxSpd;
    }
}


if (!place_meeting(x+hspd*heroSpeed, y, obj_wall)) 
{
    x+=hspd*heroSpeed;
}

if (!place_meeting(x, y+vspd*heroSpeed, obj_wall)) 
{
    y+=vspd*heroSpeed;
}



