///scr_PetBot_fire2Check(availableTarget);

if(fire2)
{
	var target = scr_PetBot_targetOnMouse(obj_localPlayer);
	var target = scr_PetBot_targetOnMouse(obj_localNpc);

	with (pet)
	{
		self.target = target;
	}
}