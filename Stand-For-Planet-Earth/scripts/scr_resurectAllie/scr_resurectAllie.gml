///scr_resurectAllie()
if(state!="dead" && currentHealth >0){
	with(obj_localPlayer){
		if(self.state == "dead"){
			if(distance_to_point(other.x,other.y)<100){
				if(other.useKey && other.currentEnergy>=3){
					if(other.resurectAllie == noone){
						other.resurectAllie = self.id;	
					}else{
						other.resurectAllie = noone;	
					}
					other.resurectProgression=0
					other.image_angle = point_direction(other.x,other.y,self.x,self.y);
					break;
				}
			}
		}
	}
}

if(resurectAllie!=noone){
	resurectProgression++;
	if(resurectProgression == resurectDuration/3){
		currentEnergy--	
	}else if(resurectProgression == resurectDuration*(2/3)){
		currentEnergy--	
	}else if(resurectProgression == resurectDuration){
		currentEnergy--	
		resurectAllie.currentHealth = 3;
		resurectAllie = noone;
	}
}