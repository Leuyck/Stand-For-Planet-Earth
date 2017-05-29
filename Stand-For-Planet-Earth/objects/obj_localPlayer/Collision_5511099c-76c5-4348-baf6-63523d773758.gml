bump = true;
alarm[3] = obj_bullet_robot_shield.bumpTime*room_speed
direction = point_direction(obj_bullet_robot_shield.x, obj_bullet_robot_shield.y,x,y)
speed = obj_bullet_robot_shield.bumpSpeed;

with(other)
{
    instance_destroy();
}
if(global.playerId == self.playerId)
{
	if (currentHealth > 0) then currentHealth -= other.damage;
}