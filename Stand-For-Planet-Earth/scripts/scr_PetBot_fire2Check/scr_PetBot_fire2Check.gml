///scr_PetBot_fire2Check(availableTarget);

if(fire2 && state !="dead")
{
	var petTarget = scr_PetBot_targetOnMouse(obj_localPlayer);
	var petTarget = scr_PetBot_targetOnMouse(obj_localNpc);

	with (pet)
	{
		self.target = petTarget;
	}
}