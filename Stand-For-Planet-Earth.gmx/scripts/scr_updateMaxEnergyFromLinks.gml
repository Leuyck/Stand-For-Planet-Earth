var linkedHeroMaxEnergies = 0;
for(var i = 0; i < ds_list_size(self.linkedHeros) ; i++)
{
    var hero = ds_list_find_index(linkedHeros, i);
    linkedHeroMaxEnergies += hero.maxEnergy;
}
currentMaxEnergy = maxEnergy + linkedHeroMaxEnergies;
