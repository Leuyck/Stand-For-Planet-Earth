/*OBSOLETE


var linkedHeroEnergyRegen = 0;
for(var i = 0; i < ds_list_size(self.linkedHeros) ; i++) {
    var hero = ds_list_find_index(linkedHeros, i);
    linkedHeroEnergyRegen += -hero.linkEnergyDegen;
}

currentEnergyRegen = linkedHeroEnergyRegen


if(linkTarget != noone) {
    currentEnergyRegen += linkEnergyDegen;
}
if(state!="dead"){
    // Si le héro ne fait pas de lien,
    // alors on ajoute sa regen.
    currentEnergyRegen += energyRegen;
}
if(currentEnergy>= currentMaxEnergy && linkTarget == noone){
	currentEnergyRegen = 0;	
}