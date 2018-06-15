/// @description 
other.bump = true;
other.alarm[3] = bumpTime*room_speed
other.direction = point_direction(x, y,other.x,other.y)
other.speed = bumpSpeed;

if (other.currentHealth > 0 && other.bonusInvincible = false){
	other.currentHealth -= damage;
}
instance_destroy();
	
var hittedByBullet = other.id;
with(obj_healthBar_vignette){
	if(self.hero == hittedByBullet.id){
		scr_createGlitch(self.id,obj_glitch_GUI);
	}
}	