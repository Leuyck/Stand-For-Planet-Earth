hspd = rightKey-leftKey;
vspd = downKey-upKey;

var maxSpeed = 0;
var heroSpeed = 0;
var acc = 0


if (hspd !=0 || vspd != 0)
{

    if (sprintKey)
    {
        if (!fire1)
        {
            state = "running";
        }
        maxSpeed = runningMaxSpd;
        acc = runningAcc;
        heroSpeed = runningMaxSpd;
    }
    else
    {
        if (!fire1)
        {
            state = "walking";
        }
        
        maxSpeed = walkingMaxSpd;
        acc = walkingAcc;
        heroSpeed = walkingMaxSpd;
    }
    
    if (heroSpeed < maxSpeed)
    {
        heroSpeed += acc;
    }
    else
    {
        // sprint key released, so slow down
        if (heroSpeed > maxSpeed)
        {
            heroSpeed-=acc;
        }
        else
        {
            heroSpeed = maxSpeed;
        }
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

