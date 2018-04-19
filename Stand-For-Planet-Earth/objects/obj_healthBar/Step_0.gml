if(!global.inWorld){
    visible = false;
} else{
    visible = true;
}
image_index = hero.currentEnergy

if(vignetteCreated == false){
	var vignette = instance_create_depth(x,y,depth-1,obj_healthBar_vignette);
	vignette.hero = hero;
	vignetteCreated = true
}

//if(hero !=noone){
//	scr_otherBarImageIndex();
//}