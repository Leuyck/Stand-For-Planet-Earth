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
hspeed = heroSpeed*hspd
vspeed = heroSpeed*vspd
//if (!place_meeting(x+hspd*heroSpeed, y, obj_wall)) 
//x+=hspd*heroSpeed;
if (hspeed !=0)
{
    if(!place_free(x+hspeed, y))
    {
        if (hspeed>0)
        {
            move_contact_solid (0, hspeed);
        }
        if (hspeed<0)
        {
            move_contact_solid (180, -hspeed);
        }
        hspeed=0
    }
}
if (vspeed !=0)
{
    if(!place_free(x, y+vspeed))
    {
        if (vspeed>0)
        {
            move_contact_solid (270, vspeed);
        }
        if (vspeed<0)
        {
            move_contact_solid (90, -vspeed);
        }
        vspeed=0
    }
}

/*if (!place_meeting(x, y+vspd*heroSpeed, obj_wall)) 
{
    y+=vspd*heroSpeed;
}

