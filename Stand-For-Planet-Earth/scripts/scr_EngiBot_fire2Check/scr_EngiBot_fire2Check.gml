///scr_EngiBot_fire2Check()


if (fire2 && !fire1 && deployed){
	if(alarm[7] <= 0){
		if(turret!=noone&&distance_to_object(turret)<=20){
				scr_reployTurret(turret)
				turret = noone;
		}else if (currentEnergy >= energyCostForFire2){
			if(turret != noone){
				scr_reployTurret(turret)
				turret = noone;
			}
			state = "firing2";
			image_index = 0;
	    }
		alarm[7] = room_speed/shot2PerSec;
	}
}

if(state == "firing2"){
	if(image_index>=image_number-1){
	    turret = instance_create_depth (x + lengthdir_x(relativeBoutCanonX, image_angle) - lengthdir_y(relativeBoutCanonY, image_angle), 
	                                y + lengthdir_y(relativeBoutCanonX, image_angle) + lengthdir_x(relativeBoutCanonY, image_angle), depth,obj_turret_EngiBot);

	    turret.direction = image_angle + random_range(-turretPrecision, turretPrecision);
		turret.image_angle = turret.direction;
	    turret.parent = id;
		turret.level = floor(currentEnergy/3)
		obj_score.totalUsedEnergy+= currentEnergy mod 3;
	    currentEnergy = currentEnergy mod 3;
		if(ds_list_size(linkedHeros)==0){
			pauseEnergyRegen = true;
		}
		state = "standing";	
	}
}

