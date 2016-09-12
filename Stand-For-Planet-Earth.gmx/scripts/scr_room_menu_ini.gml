///scr_room_menu_ini()

global.inWorld = false;

instance_create (x, y, obj_gui);

if (instance_exists (obj_engine))
{
    with (obj_engine)
    {
        instance_destroy();
    }
}

