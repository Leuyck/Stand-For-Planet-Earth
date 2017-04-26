/// Process life regen and energy regen
var refreshTime = 0.1;

if(self.playerId == global.playerId)
{
    if(currentHealth <= maxHealth) {
        currentHealth += min(maxHealth, currentHealthRegen * refreshTime);
    }
    
    if(currentEnergyRegen > 0 && currentEnergy < currentMaxEnergy)
    {
        currentEnergy += currentEnergyRegen * refreshTime;
        if(currentEnergy > currentMaxEnergy) 
        {
            currentEnergy = currentMaxEnergy;
        }
    }
    
    if(currentEnergyRegen < 0 && currentEnergy > 0)
    {
        currentEnergy += currentEnergyRegen * refreshTime;
        if(currentEnergy < 0) 
        {
            currentEnergy = 0;
        }
    }
}
alarm[5] = refreshTime * room_speed;

