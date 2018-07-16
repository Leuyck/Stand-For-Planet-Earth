///scr_BatBot_lanchBatte

var batteType = scr_getBatteTypeForFire2();
var bulletLevel =energyCostForFire2;
for (var i = 0; i < 1; i++) {
	scr_createAndSendNewBulletBatBot(id, batteType, "hero",bulletLevel)
} 
alarm[7] = room_speed/shot2PerSec;
state = "firing2"
image_index = 0;
currentEnergy -= energyCostForFire2;
if(ds_list_size(linkedHeros)==0){
	pauseEnergyRegen = true;
}