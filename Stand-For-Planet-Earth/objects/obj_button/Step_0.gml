/// @description 
with(obj_localPlayer){
	if(distance_to_point(other.x,other.y)<=120){
		if(abs(angle_difference(point_direction(other.x,other.y,self.x,self.y),other.image_angle))<=90 ){
			if (useKey && state !="dead")
			{    
		        scr_pressButton(other.id);
			}
		}
	}
}