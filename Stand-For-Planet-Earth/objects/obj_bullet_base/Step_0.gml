var currentDistance = point_distance(xOrigin, yOrigin, x, y);
if(currentDistance > maxDistance) {
    instance_destroy();
}

var collideMur = instance_place(x,y,obj_decor_base);
if(collideMur != noone){
	scr_bulletCollisionActionWithMurParent(collideMur);
}

var collideMobilier = instance_place(x,y,obj_mobilier_parent);
if(collideMobilier != noone){
	scr_bulletCollisionActionWithMobilierParent(collideMobilier);
}

var collideLocalNpc = instance_place(x,y,obj_localNpc);
if(collideLocalNpc != noone){
	scr_bulletCollisionActionWithLocalNpc(collideLocalNpc);
}


var collideLocalPlayer = instance_place(x,y,obj_localPlayer);
if(collideLocalPlayer != noone){
	scr_bulletCollisionActionWithLocalPlayer(collideLocalPlayer);
}