///scr_setVignetteSprite()

if(sprite_index == noone){
	var sprite = "spr_cadre_" + string_copy(object_get_name(hero.object_index),5,string_length(object_get_name(hero.object_index)));
	if(sprite == "spr_cadre_BatBot" || sprite == "spr_cadre_EngiBot" || sprite == "spr_cadre_BadaBot" || sprite == "spr_cadre_PetBot"){
		sprite_index = asset_get_index(sprite)
	}
}