// Hero fire
if(other.owner == "hero")
{
    with (other)
    {
        instance_destroy();
    }
    var bulletDamage = other.damage;
    currentHealth -= bulletDamage;
}

