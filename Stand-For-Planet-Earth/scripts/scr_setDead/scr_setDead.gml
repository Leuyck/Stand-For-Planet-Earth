///@description scr_setDead();

if(currentHealth <=0 && state !="dead"){
currentHealthRegen =0;
currentEnergyRegen =0;
currentEnergy =0;
currentHealth =0;

state ="dead";
image_index=0;
}
if(state =="dead" && image_index >=image_number-1){
	image_index = image_number-1;
}
if(state=="dead" && currentHealth >0){
	state = "standing";
	currentHealthRegen = healthRegen;
	currentEnergyRegen= energyRegen;
}