/// @description 
currentMunition = parent.currentMunition;
if(healthBar == noone){
	with(obj_healthBar){
		if(self.hero == other.parent){
			other.healthBar = self.id;	
		}
	}
}
if(laser == noone){
	with(obj_aimLaser){
		if(self.hero == other.parent){
			other.laser = self.id;	
		}
	}
}


if(currentMunition==0){
	if(alarm[0] <0){
		alarm[0] = 15;
		color = c_red
	}
}else{
	color = mainColor;	
	alarm[0] = -1;
}



