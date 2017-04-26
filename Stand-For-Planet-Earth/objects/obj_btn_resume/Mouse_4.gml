room_goto(global.currentWorld);
global.inWorld = true;

if (!instance_exists(obj_server)) // we are client
{    
    with (obj_localNpc)
    {
        instance_destroy ();
    }
}

