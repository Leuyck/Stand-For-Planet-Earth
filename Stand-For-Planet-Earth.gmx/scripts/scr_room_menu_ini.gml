///scr_room_menu_ini()

global.inWorld = false;

if (!instance_exists (obj_menuGui)) then instance_create (x, y, obj_menuGui);
if (instance_exists (obj_engine))
{
    with (obj_engine)
    {
        instance_destroy();
    }
}

