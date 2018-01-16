/// @description 
sprite_index = scr_setDeathSpriteToNpc();
if(exploded == false){
	for(var i = 0; i<=numberOfPieces; i++){
		var element = instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),depth,obj_projectionOfElementMort);
		if(genre == "humain"){
			var spritePosition = irandom_range(0,ds_list_size(humainElement));
			element.sprite_index = asset_get_index("spr_membreMortHumain_" +string(ds_list_find_value(humainElement,spritePosition)));
			ds_list_delete(humainElement,spritePosition);
		}else if(genre =="robot"){
			var spritePosition = irandom_range(0,ds_list_size(robotElement));
			element.sprite_index = asset_get_index("spr_membreMortRobot_" +string(ds_list_find_value(robotElement,spritePosition)));
			ds_list_delete(robotElement,spritePosition);
		}
	}
	for(var i = 0; i<=numberOfFlaques; i++){
		var element = instance_create_depth(x+irandom_range(-15,15),y+irandom_range(-15,15),depth+1,obj_flaqueMort);
		element.genre = genre;
	}
	exploded =true;
}

if(image_index >=image_number-1){
	image_index = image_number-1;
	instance_destroy();
}