/// @description 
if(lastHitId != other.id){
	var angle = point_direction(x,y,other.x,other.y);
	if(abs(angle_difference(image_angle,angle))>140){
		var bulletDamage = other.damage;
		currentHealth -= bulletDamage;
		lastHitId = other.id;
	}
}
