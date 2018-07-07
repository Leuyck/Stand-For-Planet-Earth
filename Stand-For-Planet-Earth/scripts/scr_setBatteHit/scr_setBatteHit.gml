///scr_setBatteHit()

if(explosive == true){
	var explosion = instance_create_depth(x,y,depth-1,obj_explosion)
	explosion.range = explosionRange;
	explosion.damage = explosionDamage;
}
image_index = 0;
sprite_index = hitSprite;
image_angle = direction+180;

batteStoped = true;