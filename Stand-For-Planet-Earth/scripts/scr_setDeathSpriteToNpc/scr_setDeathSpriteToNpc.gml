///@description scr_setDeathSpriteToNpc()
if(sprite_index == noone){
	if(parent == obj_npc_civil_malette){
	return spr_npc_valise_mort;
	}else if (parent ==obj_npc_human_pistol){
	return spr_npc1_mort;
	}
}else{
return sprite_index;
}