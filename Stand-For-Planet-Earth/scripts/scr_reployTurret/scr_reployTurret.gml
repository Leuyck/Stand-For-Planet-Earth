///scr_reployTurret(turretId)

var turret =argument[0];

if(turret.state =="deployement"){
	turret.state ="reployed";
}else{
	turret.state ="reployed";
	turret.sprite_index = spr_turet_deploy;
	turret.image_index = turret.image_number-1;
}