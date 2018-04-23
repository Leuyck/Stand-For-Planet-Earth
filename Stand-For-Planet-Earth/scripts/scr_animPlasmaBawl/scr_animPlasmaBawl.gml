///scr_animPlasmaBawl();

image_speed = 1;

chargingDuration = parent.loadingFire1Time;
loadingImageSpeed = numberOfFrameBeforeAttacking/(chargingDuration-sprite_get_number(spr_plasmaBawl_shot)-4)

if(parent.loadingFire1 && loaded == false){
	image_speed = loadingImageSpeed;
	if(sprite_index == spr_plasmaBawl_idle){
		image_index = 0;
		sprite_index = spr_plasmaBawl_loading;	
	}
	if(image_index >= image_number-1){
		if(sprite_index == spr_plasmaBawl_loading){
			image_index = 0;
			sprite_index = spr_plasmaBawl_loaded;	
		}else if(sprite_index == spr_plasmaBawl_loaded){
			loaded = true;
			sprite_index = spr_plasmaBawl_shot;
			image_speed = 1;
			image_index = 0;
		}
	}
}
else if(!parent.loadingFire1 && loaded == false){
	image_speed = -loadingImageSpeed;	
	if(image_index < 1){
		if(sprite_index == spr_plasmaBawl_loaded){
			sprite_index = spr_plasmaBawl_loading;	
			image_index = image_number-1;
		}else if(sprite_index == spr_plasmaBawl_loading){
			sprite_index = spr_plasmaBawl_idle;
			image_speed = 1;
			image_index = 0;
		}
	}
}

if(loaded == true){
	if(image_index >= 4 && parent.alarm[0] <0){
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