/// @description 
if(explosive){
	var explosion = instance_create_depth(x,y,depth,obj_bullet2_explosion);
	explosion.damage = explosionDamage;
	explosion.range = explosionRange;
}