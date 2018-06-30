/// @description 
// Hero fire
if(other.owner == "hero")
{
    with (other)
    {
        instance_destroy();
    }
	
	var angle = point_direction(x,y,other.x,other.y);
	if(abs(angle_difference(image_angle,angle))>160){
		var bulletDamage = other.damage;
		currentHealth -= bulletDamage;
	}
    
}