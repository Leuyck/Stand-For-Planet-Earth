/// @description 
with(other){
	if(bump == false){
		dashing = false;
		var dir = other.image_angle;
		var distance = 350;
		dashTargetX = x+lengthdir_x(distance,dir);//anti stuck
		dashTargetY = y+lengthdir_y(distance,dir);
		if(!place_meeting(x+lengthdir_x(other.bumpSpeed,dir),y+lengthdir_y(other.bumpSpeed,dir),obj_decor_base)){
			move_towards_point(dashTargetX,dashTargetY,other.bumpSpeed);
			bump = true;
		}else{
			dashTargetX = noone;
			dashTargetY = noone;
		}
		if (currentHealth > 0 && bonusInvincible = false){
			currentHealth -= other.damage;
		}
	}
}

instance_destroy();