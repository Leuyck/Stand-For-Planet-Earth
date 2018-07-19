/// @description 

// Inherit the parent event
event_inherited();
ratio = clamp(obj_plasmaBawl.currentCharge/obj_plasmaBawl.fullChargeDuration, 0.25,1)
explosionDamage *= ratio;
explosionRange = 400*((ratio-0.25)/0.75)+100;
image_xscale *= ratio;
image_yscale *= ratio;