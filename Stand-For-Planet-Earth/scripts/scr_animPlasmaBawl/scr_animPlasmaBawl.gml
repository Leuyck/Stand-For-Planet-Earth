///scr_animPlasmaBawl();


if(parent.state == "dead"){
	if(sprite_index != spr_plasmaBawl_mort){
		sprite_index = spr_plasmaBawl_mort;	
		image_index = 0;
	}
	if(image_index>=image_number-1){
		image_speed= 0;
		image_index = image_number-1;
	}
}else if (parent.state != "dead" && sprite_index == spr_plasmaBawl_mort){
	sprite_index = spr_plasmaBawl_idle	
}

if(currentCharge >0 && currentCharge <fullChargeDuration) then ++currentCharge;
if(loaded ==false){
	if(parent.alarm[0] ==-1){
		if(parent.fire1 && !parent.dashing && parent.deployed && parent.currentMunition >0 && parent.resurectAllie == noone){
			if(sprite_index == spr_plasmaBawl_idle|| sprite_index == spr_plasmaBawl_shot){
				currentCharge = 1
				image_index = 0;
				sprite_index = spr_plasmaBawl_loading;	
			}else if(sprite_index == spr_plasmaBawl_loading){
				if(image_index >= image_number-1){
					loaded = true;
					sprite_index = spr_plasmaBawl_loaded;
					image_index = 0;
				}
			}
		}
	}
}



if(!parent.fire1){
	if(sprite_index == spr_plasmaBawl_loaded || sprite_index ==spr_plasmaBawl_loading){
		sprite_index = spr_plasmaBawl_shot;
		if(parent.alarm[0]<0){
			parent.releaseBullet = true;	
		}
		
	}else if(sprite_index == spr_plasmaBawl_shot){
		if(image_index >= image_number-1){
			loaded = false;	
			sprite_index =spr_plasmaBawl_idle;
			image_index =0;
		}
	}
}

