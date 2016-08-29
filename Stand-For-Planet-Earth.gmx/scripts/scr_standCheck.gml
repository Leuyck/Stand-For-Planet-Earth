// determine if we're standing
hspd = rightKey-leftKey;
vspd = downKey-upKey;

if(vspd=0 && hspd=0  && !jumping && !fire1)
{
    state = "standing";
    // let's slow down our movement when no keys are being pressed
   
    if (hspeed<0)
    {
         hspeed += fric;
    }
    else  if (hspeed>0)
    {
         hspeed -= fric;
    }
    else
    {
        hspeed = 0;
    }
    
    if (vspeed<0)
    {
         vspeed += fric;
    }
    else if (vspeed>0)
    {
         vspeed -= fric;
    }
    else
    {
        vspeed = 0;
    }   
}

