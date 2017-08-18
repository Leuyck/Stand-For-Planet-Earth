///scr_canMove()

if (!deployed || state =="dead")
{
    canMove = false;
}
else if (state=="firing2")
{
    if (staticFire2 == true)
    {
        canMove = false;
    }
}
else
{
    canMove = true;
}


