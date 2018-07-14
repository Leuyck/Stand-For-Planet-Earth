var currentDistance = point_distance(xOrigin, yOrigin, x, y);
if(currentDistance > maxDistance) {
    instance_destroy();
}

var collideMur = instance_place(x,y,obj_mur_parent);
if(collideMur != noone){
	if(collideMur.object_index == obj_fenetre){
		scr_bulletCollisionFenetre(collideMur);
	}else if(object_get_parent(collideMur.object_index) == obj_mur_parent){
		scr_bulletCollisionMur();
	}else if(object_get_parent(collideMur.object_index) == obj_door_parent ||object_get_parent(collideMur.object_index) == obj_door_card_parent){
		scr_bulletCollisionMur();
	}
}

var collideMobilier = instance_place(x,y,obj_mobilier_parent);
if(collideMobilier != noone){
	if(collideMobilier.bulletCrossed == false){
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