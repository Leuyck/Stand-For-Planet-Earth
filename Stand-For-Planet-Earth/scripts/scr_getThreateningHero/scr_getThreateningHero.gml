var IA = argument[0];
var ennemy = argument[1]
var threateningHero = noone;

if(fear == true){
	if(heroSpotted == true){
		threateningHero = instance_nearest(IA.x, IA.y, ennemy);
	}else{
		threateningHero = src_getTheNearestVisibleEnnemyFromIA(id,ennemy);
	}
}

return threateningHero;

