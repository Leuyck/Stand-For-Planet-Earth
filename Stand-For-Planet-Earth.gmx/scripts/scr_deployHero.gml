///scr_deployHero(enable);

deployEnable = argument[0]

if(deployEnable && !deployed)
{
    state = "deploying";
    if(image_index>image_number-1)
    {
        deployed = true;
        ds_map_replace(imageSpeeds,"deploying",0);
        image_speed=0;
    }
}
else
{
    deployed = true;
}
