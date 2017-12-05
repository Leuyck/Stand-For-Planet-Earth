
if(lastHitId != other.id)
{
    var bulletDamage = other.damage;
    currentHealth -= bulletDamage;
    lastHitId = other.id;
	audio_play_sound(snd_batBot_hitHuman,1,false)
}


