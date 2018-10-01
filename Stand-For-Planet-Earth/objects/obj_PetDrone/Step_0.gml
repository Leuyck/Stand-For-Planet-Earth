if(global.gamePaused == false){
	image_angle = direction;
	speed = scr_PetDrone_movementSpeed();
	image_index = level -1;
	
	if(distance_to_point(xstart,ystart) >= range){
		instance_destroy();	
	}
	
	var collideMobilier = instance_place(x,y,obj_mobilier_parent);
	if(collideMobilier != noone){
		if(object_get_parent(collideMobilier.object_index) == obj_mobilier_parent){
			if(collideMobilier.bulletCrossed == false){
				instance_destroy();	
			}
		}
	}
	var collideMur = instance_place(x,y,obj_decor_base);
	if(collideMur != noone){
		if(object_get_parent(collideMur.object_index) == obj_mur_parent || collideMur.object_index == obj_mur_parent){
			if(collideMur.object_index == obj_fenetre){
				scr_bulletCollisionFenetre(collideMur);
			}else{
				instance_destroy();	
			}
		}
		if(object_get_parent(collideMur.object_index) == obj_door_parent || object_get_parent(object_get_parent(collideMur.object_index)) == obj_door_parent){
			instance_destroy();	
		}
	}

	var collideLocalNpc = instance_place(x,y,obj_localNpc);
	if(collideLocalNpc != noone){
		instance_destroy();	
	}	
}

