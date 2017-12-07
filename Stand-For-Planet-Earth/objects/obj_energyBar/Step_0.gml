
if(hero.currentEnergy>=energyBarId){
	full = true;	
}else{
	full = false;	
}
if(energyBarId>hero.maxEnergy){
	overchargedBar = true;	
}


if(!global.inWorld)
{
    visible = false;
}   
else
{
    visible = true;
}

