/// @description 
event_inherited();
with(obj_localPlayer){
	if(distance_to_point(other.x,other.y)<=120){
		if(abs(angle_difference(point_direction(other.x,other.y,self.x,self.y),other.image_angle+other.angleOffset))<=90){
			if (useKey && state !="dead")
			{    
			    other.image_speed = 1;
			}
		}
	}
}

if(image_index>= image_number-1){
	image_index = 0;
	image_speed = 0;
}