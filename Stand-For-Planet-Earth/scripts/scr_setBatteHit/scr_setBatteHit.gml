///scr_setBatteHit()

if(explosive == true){
	var explosion = instance_create_depth(x,y,depth-1,obj_explosion)
	explosion.range = explosionRange;
	explosion.damage = explosionDamage;
}
speed=0
image_index = 0;
sprite_index = hitSprite;
image_speed = image_speed_hit;
image_angle = direction+180;
x+=lengthdir_x(100,direction);
y+=lengthdir_y(100,direction);

