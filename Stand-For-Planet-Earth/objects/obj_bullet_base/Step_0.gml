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
	}
}