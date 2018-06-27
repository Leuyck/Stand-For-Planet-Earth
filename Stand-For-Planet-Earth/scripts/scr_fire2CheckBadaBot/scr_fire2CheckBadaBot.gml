/// scr_fire2CheckBadaBot()

if (fire2 && !fire1 && state!="dead" && deployed){
	
    if (currentEnergy >= energyCostForFire2 && alarm[7] <0){
        alarm[7] = room_speed/shot2PerSec;
		state = "firing2"
		image_index = 0;
		currentEnergy -= energyCostForFire2;
		if(ds_list_size(linkedHeros)==0){
			pauseEnergyRegen = true;
		}
        //if (!instance_exists(obj_energyWall))
        //{
        //    energyWall = instance_create (x, y, obj_energyWall);
        //    energyWall.image_alpha = 0.5;
        //    energyWall.owner = id
        //}
        //currentEnergyRegen = 0;  
		//pauseEnergyRegen = true;
        //alarm[6] = 0.1 * room_speed;    
    }
}

if(state == "firing2"){
	//if(!fire2){
    //    if(image_index < image_number-1){
    //        state="firing2";
    //    }else{
    //        state="standing"
    //    }
    //}else if(image_index>= image_number-1){
	//	state ="standing";	
	//}
	if(image_index>image_number-1){
		state ="standing";	
		
	}
}

if (instance_exists (obj_energyWall)){
    energyWall.image_xscale = shieldSize;
    energyWall.image_yscale = shieldSize;
}
