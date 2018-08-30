/// @description 

// Inherit the parent event
event_inherited();
//ratio = clamp(obj_plasmaBawl.currentCharge/obj_plasmaBawl.fullChargeDuration, 0.25,1)
//explosionDamage *= ratio;
explosionRange = 100;
image_xscale =0.25
image_yscale =0.25
if(instance_exists(obj_score)){
	obj_score.totalAmmoUsed++
}