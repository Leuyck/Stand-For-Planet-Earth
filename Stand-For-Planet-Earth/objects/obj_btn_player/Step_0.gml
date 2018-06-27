/// @description 
if(freeze==false){
	var activeButton = scr_getActivePlayerButton();
	scr_playerButtonActions(activeButton);
}

if(enable){
	if(vignetteInstance == noone){
		vignetteInstance = instance_create_depth(x,y,depth+2,obj_btn_player_vignette);
		vignetteInstance.parent = self.id;
	}else{
		var sprite = "spr_selection" + string_copy(object_get_name(heroSelected),5,string_length(object_get_name(heroSelected)));
		if(sprite == "spr_selectionRoomCreator"){
			vignetteInstance.sprite_index = noone;
		}else{
			if(vignetteInstance.sprite_index != asset_get_index(sprite)){
				vignetteInstance.sprite_index = asset_get_index(sprite);
				with(vignetteInstance.glitch){///reload glitch when changing character
					instance_destroy();	
				}
				vignetteInstance.glitch = noone;
				vignetteInstance.alarm[0] = 1;
			}
		}
	}
}else{
	with(vignetteInstance){
		instance_destroy();	
	}
	vignetteInstance = noone;
}