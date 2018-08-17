///scr_room_menu_ini()

global.inWorld = false;

if(!instance_exists(obj_gui)) then instance_create (x, y, obj_gui);
if(instance_exists(obj_score)) then instance_destroy(obj_score);