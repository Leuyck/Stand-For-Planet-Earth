///@description scr_setDeathSpriteToNpc()
if(sprite_index == -1){
image_index=0;
	switch parent{
		case obj_npc_civil_malette :
			return spr_npc_valise_mort;
			break;
		case obj_npc_human_pistol :
			return spr_npc1_mort;
		break;
			case obj_npc_robot_lightBot:
			return spr_npc1_mort;
		break;	
	}
}else{
return sprite_index;
}