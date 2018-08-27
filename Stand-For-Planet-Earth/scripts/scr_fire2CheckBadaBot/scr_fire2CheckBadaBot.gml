/// scr_fire2CheckBadaBot()

if (fire2  && state!="dead" && deployed && sprite_index != ds_map_find_value(sprites,"firing2")){
    if (currentEnergy >= 1 && alarm[7] <0){
        alarm[7] = room_speed/shot2PerSec;
		state = "firing2"
		image_index = 0;
		if(ds_list_size(linkedHeros)==0){
			pauseEnergyRegen = true;
		}
		currentSpeed = walkingMaxSpd/2;
    }
}

if(sprite_index == ds_map_find_value(sprites,"firing2")){	
	if(fire2 && currentEnergy>0){
		if(image_index >= 2){
			if(ds_map_find_value(sprites, "firing2")== spr_BadaBot_fire2){
				ds_map_replace(sprites,"firing2",spriteFire2);
				if(!collision_circle(x,y,45,obj_decor_base,true,false)){//antistuck
					x += lengthdir_x(17,image_angle);
					y += lengthdir_y(17,image_angle);
				}
				
			}
			image_index = 2;
			image_speed = 0;
			if(!instance_exists(obj_BadaBot_shield)){
				var shield = instance_create_depth(x,y,depth,obj_BadaBot_shield);	
				shield.parent = self.id;
			}
		}
		if(ds_list_size(linkedHeros)==0){
			pauseEnergyRegen = true;
		}
	}else{
		if(ds_map_find_value(sprites, "firing2")==spriteFire2){
			ds_map_replace(sprites,"firing2",spr_BadaBot_fire2);
			if(!collision_circle(x,y,45,obj_decor_base,true,false)){//antistuck
				x -= lengthdir_x(17,image_angle);
				y -= lengthdir_y(17,image_angle);
			}
		}
		currentSpeed = walkingMaxSpd;
		image_speed = 1;	
		if(instance_exists(obj_BadaBot_shield)){
			instance_destroy(obj_BadaBot_shield);
		}
		if(image_index>image_number-1){
			state ="standing";	
			image_index = 0;
		}
	}
}