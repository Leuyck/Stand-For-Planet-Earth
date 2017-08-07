///scr_bumpCheck()
 
if(bump && state !="dead")
{
    if (place_meeting(x+hspeed,y+vspeed,obj_decor_base))
    {
        speed = 0;
    }
}
