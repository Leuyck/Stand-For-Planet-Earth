if(!global.inWorld){
    visible = false;
} else{
    visible = true;
}
image_index = hero.currentEnergy
image_xscale = global.displayRatio;
image_yscale = global.displayRatio;

if(vignetteCreated == false){
	var vignette = instance_create_depth(x,y,depth-2,obj_healthBar_vignette);
	vignette.hero = hero;
	vignetteCreated = true
}
if(electricityFXCreated == false){
	var electricity = instance_create_depth(x,y,depth-1,obj_electricityFX);
	electricity.hero = hero;
	electricityFXCreated = true
}
//if(hero !=noone){
//	scr_otherBarImageIndex();
//}