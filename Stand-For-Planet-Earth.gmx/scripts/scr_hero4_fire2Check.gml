///scr_hero4_fire2Check()

if (fire2)
{
    godmode = true;
    currentEnergyRegen = - (maxEnergy / godmodeMaxDuration);
    with(obj_healthBar)
    {
        if(self.healthBarId == other.playerId)
        {
            self.energyBarColour = c_red;
        }
    }

    alarm[4] = room_speed * (currentEnergy / maxEnergy) * godmodeMaxDuration
}
