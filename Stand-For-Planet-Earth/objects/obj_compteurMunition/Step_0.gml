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






