///set the fire2
event_inherited()

if (global.playerId == self.playerId)
{
    if (instance_exists(obj_chatTyping) && obj_chatTyping.isTyping == false)
    {
        scr_hero4_fire2Check()
    }
}
if (godmode) 
{
    state = "godmode";
    currentEnergyRegen = - (maxEnergy / godmodeMaxDuration);
    
    with(obj_healthBar)
    {
        if(self.hero == other.id)
        {
            self.energyBarColour = c_red;
        }
    }
    
    particule = instance_create(x, y, obj_particule1)
    particule.owner = id
}

