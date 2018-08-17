/// @description 
if(instance_exists(parent)){
	x = parent.x;
	y = parent.y;
	image_angle = parent.image_angle
}else{
	instance_destroy();	
}

if(bulletTanked>=tankedBulletPerEnergyBar){
	bulletTanked = 0;
	if(parent.currentEnergy>0){
		parent.currentEnergy--;
		obj_score.totalUsedEnergy++;
	}
}