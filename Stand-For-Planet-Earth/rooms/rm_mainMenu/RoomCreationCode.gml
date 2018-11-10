scr_room_menu_ini()

randomise();

with(obj_roomsMemory)
{
    instance_destroy();
}
with(obj_controller_parent) {
	self.playerNumber = noone;	
	self.heroSelected = noone;
}
if(!instance_exists(obj_musicController)) then instance_create_depth(0,0,0,obj_musicController)