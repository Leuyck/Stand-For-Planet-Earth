///scr_deployHero(enable);

deployEnable = argument[0]

if(deployEnable && !deployed)
{
    state = "deploying";
    if(image_index>image_number-1)
    {
        deployed = true
    }
}
else
{
    deployed = true;
}
