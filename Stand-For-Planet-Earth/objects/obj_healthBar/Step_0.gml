if(self.hero != noone)
{
    self.healthPosition = (self.hero.currentHealth / self.hero.maxHealth) * 100;

    // Calcul des différentes barres d'énergies.
    ds_list_clear(self.energyBars);
    for(var i = 1 ; i < 100 ; i++) {
        var energyBarIsFull = (self.hero.currentEnergy div (i * self.hero.maxEnergy)) != 0;
        if(energyBarIsFull) {
            ds_list_add(self.energyBars, 100);
        }
        else {
            var remainingEnergy = self.hero.currentEnergy % self.hero.maxEnergy;
            if(remainingEnergy != 0) {
                ds_list_add(self.energyBars, remainingEnergy);
            }
            break;
        }
    }
}
if(!global.inWorld)
{
    visible = false;
}   
else
{
    visible = true;
}

