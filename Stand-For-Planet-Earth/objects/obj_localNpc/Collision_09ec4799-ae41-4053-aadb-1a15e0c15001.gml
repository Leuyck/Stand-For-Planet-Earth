
if(lastHitId != other.id)
{
    var bulletDamage = other.damage;
    currentHealth -= bulletDamage;
    lastHitId = other.id;
}