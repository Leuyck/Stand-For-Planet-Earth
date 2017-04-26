if (deploy == true)
{
    pod = draw_sprite(spr_turet_pod,0, x, y)
    turret = draw_self()
    image_index = 1;
}
else
{
    turret = draw_self();
    image_index = 0
}

