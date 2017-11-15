if (instance_exists (obj_server))
{
    if(lastHitId != other.id)
    {
        show_debug_message(other.damage);
        var bulletDamage = other.damage;
        currentHealth -= bulletDamage;
        lastHitId = other.id;
		audio_play_sound(snd_batBot_hitHuman,1,false)
    }
}

