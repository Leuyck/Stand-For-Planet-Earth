//set the decrease of currentEnergy

godmode = false;
currentEnergyRegen = energyRegen;

with(obj_healthBar)
{
    if(self.hero == other.id)
    {
        self.energyBarColour = c_blue;
    }
}

with(obj_particule1)
{
    part_emitter_destroy(part1_sys, part1_emit);
    instance_destroy();
}



