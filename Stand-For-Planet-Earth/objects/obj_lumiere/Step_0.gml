/// @description 
if(initialized){
	if(scr_isInView(radius+50)){
		//scr_calculShadowForMovingInstance(10);
		scr_calculShadowForDoors(10)
	}else{
		if(ds_map_empty(movingInstanceDetected)) then ds_map_clear(movingInstanceDetected);
		if(ds_list_empty(movingInstanceDetectedList)) then ds_list_clear(movingInstanceDetectedList);
	}
}

lx=x;
ly=y;

if(radius != abs(image_xscale*(sprite_get_width(spr_lumiere)/2))&&instance_exists(obj_RoomCreator) && obj_RoomCreator.instanceSelected == self.id)
{
	scr_initializeLumiere();
	image_xscale = radius/(sprite_get_width(spr_lumiere)/2);
	image_yscale = image_xscale;
}

if(initialized == false){
	var allCopied = true;
	with(obj_mur_parent){
		if(copied == false){
			allCopied = false;
			exit
		}
	}
	if(allCopied == true){
		scr_initializeLumiere();	
	}
}