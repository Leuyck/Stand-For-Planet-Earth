if(linkTarget != noone && state !="dead")
{
    var distance = distance_to_object(linkTarget);
    if(distance > linkDistanceMax)
    {
        linkTarget = noone;
    }
    else
    {
        if(distance <= linkDistanceMin)
            linkPower = 1;
        else
            linkPower = 1 - distance / linkDistanceMax;
    }
}

