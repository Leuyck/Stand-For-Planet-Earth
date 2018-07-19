///scr_bulletCollisionActionWithMobilierParent(collideInstance)
var collideInstance = argument[0];

if(object_get_parent(collideInstance.object_index) == obj_mobilier_parent){
	if(collideInstance.bulletCrossed == false){
		scr_bulletCollisionMur();

		if(self.object_index != obj_bullet_EngiBot){
			instance_destroy();
		}
		if(self.object_index == obj_bullet_BadaBot){
			var explosion = instance_create_depth(x,y,depth,obj_bullet2_explosion);
			explosion.damage = explosionDamage
		}
	}
}