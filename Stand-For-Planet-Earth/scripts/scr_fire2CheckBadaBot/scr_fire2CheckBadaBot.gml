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
		audio_play_sound(asset_get_index("snd_badaBot_fire2_" + string(choose(1,2,3))),1,false);
    }
}

if(sprite_index == ds_map_find_value(sprites,"firing2")){	
	if(fire2 && currentEnergy>0){
		if(image_index >= 2){
			if(ds_map_find_value(sprites, "firing2")== spr_BadaBot_fire2){
				ds_map_replace(sprites,"firing2",spriteFire2);
				var x2 = x+lengthdir_x(17,image_angle);//anti stuck
				var y2 = y+lengthdir_y(17,image_angle);
				x = ds_list_find_value(scr_getPositionWithoutCollision(x,y,x2,y2,obj_decor_base),0);
				y = ds_list_find_value(scr_getPositionWithoutCollision(x,y,x2,y2,obj_decor_base),1);				
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
			var x2 = x-lengthdir_x(17,image_angle);//anti stuck
			var y2 = y-lengthdir_y(17,image_angle);
			x = ds_list_find_value(scr_getPositionWithoutCollision(x,y,x2,y2,obj_decor_base),0);
			y = ds_list_find_value(scr_getPositionWithoutCollision(x,y,x2,y2,obj_decor_base),1);	
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