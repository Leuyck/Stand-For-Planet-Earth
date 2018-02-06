///scr_EngiBot_fire2Check()


if (fire2 && !fire1)
{
    if (currentEnergy >= energyCostForFire2 && alarm[7] <= 0 && !instance_exists(obj_turret_EngiBot))
    {
		state = "firing2";
		image_index = 0;

    }
    else
    {
		if (distance_to_object(turret)<=20){
			if(turret.state =="deployed"){
	            turret.state ="reployed";
				turret.sprite_index = spr_turet_deploy;
				turret.image_index = turret.image_number-1;
			}else if(turret.state =="deployement"){
				turret.state ="reployed";
			}
        }
    }
    alarm[7] = room_speed/shot2PerSec;
}

if(state == "firing2"){
	if(image_index>=image_number-1){
	    turret = instance_create_depth (x + lengthdir_x(weaponPosX, image_angle) - lengthdir_y(weaponPosY, image_angle), 
	                                y + lengthdir_y(weaponPosX, image_angle) + lengthdir_x(weaponPosY, image_angle), depth,obj_turret_EngiBot);

	    turret.direction = image_angle + random_range(-turretPrecision, turretPrecision);
	    turret.parent = id;
	    currentEnergy -= energyCostForFire2
		state = "standing";	
	}
}

