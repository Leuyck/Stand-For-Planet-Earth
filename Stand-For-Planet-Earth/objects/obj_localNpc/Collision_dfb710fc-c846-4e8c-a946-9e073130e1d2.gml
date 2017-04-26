if (instance_exists (obj_server))
{
    show_debug_message(other.damage);
    var bulletDamage = other.damage;
    currentHealth -= bulletDamage;
}

