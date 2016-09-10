var hspd = rightKey-leftKey;
var vspd = downKey-upKey;

var heroSpeed = 0;

if ((hspd !=0 || vspd != 0)&& !dashing)
{    
    if (!fire1)
    {
        state = "walking";
    }
    heroSpeed = walkingMaxSpd; 
}


if (!place_meeting(x+hspd*heroSpeed, y, obj_decor_base)) 
{
    x+=hspd*heroSpeed;
}

if (!place_meeting(x, y+vspd*heroSpeed, obj_decor_base)) 
{
    y+=vspd*heroSpeed;
}



