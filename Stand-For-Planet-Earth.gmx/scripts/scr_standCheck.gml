// determine if we're standing
hspd = rightKey-leftKey;
vspd = downKey-upKey;

if(vspd=0 && hspd=0  && !jumping && !fire1 && !dashing)
{
    state = "standing";
}

