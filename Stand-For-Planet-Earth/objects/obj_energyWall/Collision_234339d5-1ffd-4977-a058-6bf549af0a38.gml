if(other.owner == "ennemi")
{
    with(other)
    {
        instance_destroy();
    }
    if (owner.currentEnergy > 0)
        then owner.currentEnergy -= other.damage;
}



