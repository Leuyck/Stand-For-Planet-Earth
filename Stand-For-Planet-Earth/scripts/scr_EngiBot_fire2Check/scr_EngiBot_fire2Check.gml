///scr_EngiBot_fire2Check()


if (fire2 && !fire1){
	if(turret!=noone&&distance_to_object(turret)<=20){
			scr_reployTurret(turret)
			turret = noone;
	}else if (currentEnergy >= energyCostForFire2 && alarm[7] <= 0){
		if(turret != noone){
			scr_reployTurret(turret)
			turret = noone;
		}
		state = "firing2";
		image_index = 0;
    }
    alarm[7] = room_speed/shot2PerSec;
}

if(state == "firing2"){
	if(image_index>=image_number-1){
	    turret = instance_create_depth (x + lengthdir_x(weaponPosX, image_angle) - lengthdir_y(weaponPosY, image_angle), 
	                                y + lengthdir_y(weaponPosX, image_angle) + lengthdir_x(weaponPosY, image_angle), depth,obj_turret_EngiBot);

	    turret.direction = image_angle + random_range(-turretPrecision, turretPrecision);
	    turret.parent = id;
		turret.level = currentEnergy/3
	    currentEnergy = 0;
		if(ds_list_size(linkedHeros)==0){
			pauseEnergyRegen = true;
		}
		state = "standing";	
	}
}

