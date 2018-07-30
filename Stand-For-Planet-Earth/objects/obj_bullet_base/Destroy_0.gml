/// @description 
if(explosive){
	var explosion = instance_create_depth(x,y,depth,explosionObject);
	explosion.damage = explosionDamage;
	explosion.range = explosionRange;
}