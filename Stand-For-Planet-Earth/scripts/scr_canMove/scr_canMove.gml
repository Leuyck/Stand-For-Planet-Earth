///scr_canMove()

if (!deployed || state =="dead" || resurectAllie !=noone)
{
    canMove = false;
}
else if (state=="firing2")
{
    if (staticFire2 == true)
    {
        canMove = false;
    }
}else if(instance_exists(obj_pauseMenu)){
	canMove = false;
}
else
{
    canMove = true;
}


