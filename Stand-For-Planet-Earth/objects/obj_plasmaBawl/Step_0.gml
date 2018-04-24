/// @description 
scr_setFireImageSpeed(spr_plasmaBawl_loading,(parent.shot1PerSec+parent.bonusSpeed*parent.attackSpeedBonusFactor*parent.shot1PerSec) );
scr_animPlasmaBawl();

if(!instance_exists(parent)){
	instance_destroy();
}