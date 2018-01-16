/// @description 
other.bump = true;
other.alarm[3] = bumpTime*room_speed
other.direction = point_direction(x, y,other.x,other.y)
other.speed = bumpSpeed;

if (other.currentHealth > 0) then other.currentHealth -= damage;

instance_destroy();