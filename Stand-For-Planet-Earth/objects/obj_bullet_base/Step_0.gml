var currentDistance = point_distance(xOrigin, yOrigin, x, y);
if(currentDistance > maxDistance) {
    instance_destroy();
}

var collideInstance = instance_place(x,y,obj_decor_base);
if(collideInstance != noone){
	scr_bulletCollisionActionWithMurParent(collideInstance);
	scr_bulletCollisionActionWithMobilierParent(collideInstance);
}
var collideLocalNpc = instance_place(x,y,obj_localNpc);
if(collideLocalNpc != noone){
	scr_bulletCollisionActionWithLocalNpc(collideLocalNpc);
}


var collideLocalPlayer = instance_place(x,y,obj_localPlayer);
if(collideLocalPlayer != noone){
	scr_bulletCollisionActionWithLocalPlayer(collideLocalPlayer)
}




