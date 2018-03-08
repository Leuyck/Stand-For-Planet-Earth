/// @description Energy transfer alarm

if(linkTarget != noone && currentEnergy >=1){
	currentEnergy--;
	linkTarget.currentEnergy++;
}
alarm[4] = timePerEnergyTic

