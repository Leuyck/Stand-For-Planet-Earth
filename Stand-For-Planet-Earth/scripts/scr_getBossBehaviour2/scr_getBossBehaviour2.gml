/// scr_getBossBehaviour(IA, ennemyKind)
var IA = argument[0];
var ennemy = argument[1]

if(IA.currentHealth <= 0) {
	return noone;	
}
	
var eyeContactWithEnnemi = scr_isCollidingWithRoom(IA.x, IA.y , ennemy.x, ennemy.y) == false;
var distanceToennemy = distance_to_object(ennemy);
var firstEnnemyContact = behaviour != "chase" && behaviour != "attack" && behaviour != "surprised";

if(transformed == false) then return "transformation";
if(chargeBeforeBreathing >= chargeForBreathing && ((behaviour != "breathing"&&image_index >= image_number-1) || behaviour == "breathing")) then return "breathing";
	
if(!eyeContactWithEnnemi) {
	return "chase";
}

// Si on attaquait déjà et tant qu'on est dans la range, on attaque.
if(behaviour == "attack" && distanceToennemy <= IA.attack_range+150) {
	return "attack";
}

///Si la distance est grande et quoi soit on fini d'attaquer, soit on attaque deja plus, alors.... chase
else if(distanceToennemy > IA.attack_range && ((state == "fire1" && image_index >= image_number-1)||(state != "fire1"))) {
	return "chase";
}
	
var mobilier = collision_line(IA.x, IA.y, ennemy.x, ennemy.y, obj_mobilier_parent, false, true);
if(mobilier != noone && mobilier.bulletCrossed == false) {
	return "chase";
}
	
return "attack";