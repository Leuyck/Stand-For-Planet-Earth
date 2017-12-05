
if(lastHitId != other.id)
{
    show_debug_message(other.damage);
    var bulletDamage = other.damage;
    currentHealth -= bulletDamage;
    lastHitId = other.id;
}