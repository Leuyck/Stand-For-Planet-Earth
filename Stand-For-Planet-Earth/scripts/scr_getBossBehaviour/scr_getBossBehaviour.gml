/// scr_getBossBehaviour(IA, ennemyKind)
var IA = argument[0];
var ennemy = argument[1]

if(IA.currentHealth <= 0) {
	return noone;	
}
	
var eyeContactWithEnnemi = scr_isCollidingWithRoom(IA.x, IA.y , ennemy.x, ennemy.y) == false;
var distanceToennemy = distance_to_object(ennemy);
var firstEnnemyContact = behaviour != "chase" && behaviour != "attack" && behaviour != "surprised";

if(firstEnnemyContact || alarm[6] != -1) {
	return "surprised";
}
	
if(!eyeContactWithEnnemi) {
	return "chase";
}

// Si on attaquait déjà et tant qu'on est dans la range, on attaque.
if(behaviour == "attack" && distanceToennemy <= IA.attack_range+150) {
	return "attack";
}

// Si on attaquait pas, on va se rapprocher un peu plus près de l'attack_range pour permettre
// une bonne occupation de l'espace. On s'assure que l'attaque range - random est plus grand que
// la taille du sprite. (cf robot shield)
else if(distanceToennemy > IA.attack_range && state != "fire1" /*max(IA.attack_range - irandom_range(100, 300), IA.sprite_width)*/) {
	return "chase";
}
	
var mobilier = collision_line(IA.x, IA.y, ennemy.x, ennemy.y, obj_mobilier_parent, false, true);
if(mobilier != noone && mobilier.bulletCrossed == false) {
	return "chase";
}
	
return "attack";
