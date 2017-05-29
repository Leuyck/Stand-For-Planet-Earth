///draw the menu's light

if (room != rm_world1)
{
    if (!instance_exists (obj_light_menu))
    {
        instance_create (room_width/2 , room_height/2, obj_light_menu);
    }
}
else
{
    with(obj_light_menu)
    {
        instance_destroy()
    }
    global.sl_viewid =  0;
}


