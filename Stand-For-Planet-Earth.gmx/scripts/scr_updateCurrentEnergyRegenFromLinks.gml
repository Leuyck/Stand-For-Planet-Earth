var linkedHeroEnergyRegen = 0;
for(var i = 0; i < ds_list_size(self.linkedHeros) ; i++)
{
    var hero = ds_list_find_index(linkedHeros, i);
    linkedHeroEnergyRegen += -hero.linkEnergyDegen;
}

currentEnergyRegen = linkedHeroEnergyRegen;

if(linkTarget != noone) {
    currentEnergyRegen += linkEnergyDegen;
}
else {
    // s'il n'y a pas de lien vers un héros,
    // on autorise l'énergie regen du héros lui meme.
    currentEnergyRegen += energyRegen;
}
