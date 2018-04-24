///scr_animPlasmaBawl();

image_speed = 1;

chargingDuration = parent.loadingFire1Time;
//loadingImageSpeed = numberOfFrameBeforeAttacking/chargingDuration;

if(parent.loadingFire1 && loaded == false){
	image_speed = 1;
	if(sprite_index == spr_plasmaBawl_idle){
		image_index = 0;
		sprite_index = spr_plasmaBawl_loading;	
	}else if(sprite_index == spr_plasmaBawl_loading){
		if(image_index >= image_number-1){
			loaded = true;
			image_speed = 1;
			image_index = 0;
		}
	}
}
else if(!parent.loadingFire1 && loaded == false){
	if(sprite_index == spr_plasmaBawl_loading){
		image_speed = -1;	
		if(image_index < 1){
			sprite_index = spr_plasmaBawl_idle;
			image_speed = 1;
			image_index = 0;
		}
	}
}

if(loaded == true){
	sprite_index=spr_plasmaBawl_shot;
	if(parent.alarm[0]<0){
		parent.state ="firing1";	
	}
	if(image_index >= image_number-1){
		loaded = false;	
		sprite_index =spr_plasmaBawl_idle;
		image_index =0;
	}
}

if(parent.state = "dead" && parent.image_index >9){
	sprite_index = spr_plasmaBawl_mort;	
}