if(other.owner == "ennemi")
{
    with(other)
    {
        instance_destroy();
    }
    if (currentHealth > 0) then currentHealth -= other.damage;
}



