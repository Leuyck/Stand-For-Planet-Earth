/// Fade out

if (alpha > 0)
{
    alpha -= 1 / room_speed;
    alarm[1] = fadeOutTime;
}
else
{
    instance_destroy()
}


