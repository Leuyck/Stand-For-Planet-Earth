/// @description 
if(initialized){
	if(scr_isInView(radius+50)){
		scr_calculShadowForMovingInstance(10);
	}else{
		for(var ii =0; ii<array_height_2d(movingInstanceDetected); ii++){
			movingInstanceDetected[ii,1] = noone;
			movingInstanceDetected[ii,2] = noone;
			movingInstanceDetected[ii,3] = noone;
			movingInstanceDetected[ii,4] = noone;
			movingInstanceDetected[ii,5] = noone;
			movingInstanceDetected[ii,6] = noone;	
		}
		movingInstanceDetected =noone;
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