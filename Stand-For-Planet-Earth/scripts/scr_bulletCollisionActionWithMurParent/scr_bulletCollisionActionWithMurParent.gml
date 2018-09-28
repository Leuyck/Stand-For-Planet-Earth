///scr_bulletCollisionActionWithMurParent(collideInstance)
var collideInstance = argument[0];

if(object_get_parent(collideInstance.object_index) == obj_mur_parent){
	if(collideInstance.object_index == obj_fenetre){
		scr_bulletCollisionFenetre(collideInstance);
	}else{
		scr_bulletCollisionMur();
	}
}
if(object_get_parent(collideInstance.object_index) == obj_door_parent || object_get_parent(object_get_parent(collideInstance.object_index)) == obj_door_parent || collideInstance.object_index == obj_mur_parent){
	scr_bulletCollisionMur();
}