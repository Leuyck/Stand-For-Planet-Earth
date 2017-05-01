event_inherited();
if (global.playerId == self.playerId)
{
	scr_PetBot_fire2Check();
	///create PetDrone
	if(!instance_exists(obj_PetDrone))
	{
		pet = instance_create(x+random_range(-100,100),y+random_range(-100,100), obj_PetDrone);
		pet.parent = id;
	}
}