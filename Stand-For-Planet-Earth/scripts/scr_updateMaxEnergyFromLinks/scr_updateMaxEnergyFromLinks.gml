/*OBSOLETE

var linkedHeroMaxEnergies = 0;
for(var i = 0; i < ds_list_size(self.linkedHeros) ; i++)
{
    var hero = ds_list_find_index(linkedHeros, i);
    linkedHeroMaxEnergies += hero.maxEnergy;
}

/*if(currentEnergy>maxEnergy+linkedHeroMaxEnergies&&currentEnergyRegen<0){
	currentMaxEnergy = currentEnergy;	
}else{
	currentMaxEnergy = maxEnergy + linkedHeroMaxEnergies;
//}
