if(other.owner == "ennemi")
{
    with(other)
    {
        instance_destroy();
    }
	if(global.playerId == self.playerId)
	{
		if (currentHealth > 0) then currentHealth -= other.damage;
	}
}



