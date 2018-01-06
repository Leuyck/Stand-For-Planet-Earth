/// @description 
with(obj_healthBar)
{
    if (self.hero == other.hero)
    {
        instance_destroy ();
    }
}
with(obj_energyBar)
{
    if (self.hero == other.hero)
    {
        instance_destroy ();
    }
}