///scr_bulletCollisionActionWithMobilierParent(collideInstance)
var collideInstance = argument[0];

scr_bulletCollisionMur();

if(self.object_index != obj_bullet_EngiBot){
	instance_destroy();
}
if(self.object_index == obj_bullet_BadaBot){
	var explosion = instance_create_depth(x,y,depth,obj_bullet2_explosion);
	explosion.damage = explosionDamage
}
