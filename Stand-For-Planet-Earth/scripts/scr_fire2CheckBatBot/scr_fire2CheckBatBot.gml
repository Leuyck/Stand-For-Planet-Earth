/// scr_fire2CheckBatBot();
numberOfBatte = 2-instance_number(obj_bullet_batte_parent);

if(fire2 && state!="dead" && deployed){
    mouse_clear(mb_right);
	if(currentEnergy >= energyCostForFire2){
		if(numberOfBatte != 0){
			if (alarm[7] <= 0){
			    var batteType = obj_bullet_batte_d
				ds_map_replace(sprites,"firing2",spr_BatBot_fire2_d);
    
			    if(numberOfBatte == 1){
			       batteType = obj_bullet_batte_g
			       ds_map_replace(sprites,"firing2",spr_BatBot_fire2_g);
			    }
        
		        for (var i = 0; i < 1; i++) 
		        {
		            scr_createAndSendNewBullet(id, batteType, "hero",true)
		        } 
		        alarm[7] = room_speed/shot2PerSec;
			    state = "firing2"
			    image_index = 0;
			}
		}else{
			with(obj_bullet_batte_parent){
				self.returnToBatBot = true;
			}	
		}
		currentEnergy -= energyCostForFire2;
	}else{
		scr_showNotification("Not Enought Energy !",c_red);
	}
}

if(state=="firing2")
{
    if(!fire2)
    {
        if(image_index < image_number-1)
        {
            state="firing2";
        }
        else
        {
            state="standing"
        }
    }
}

