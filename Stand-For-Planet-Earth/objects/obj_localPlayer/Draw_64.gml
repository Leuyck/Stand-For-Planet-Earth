/// @description 
if(state =="dead" && image_index == image_number-1){
	scr_drawArrowTowardOutOfScreenObject(self.id,asset_get_index("spr_"+string_copy(object_get_name(object_index),5,10)+"_pointingArrow"),image_number-1,image_angle,mainColor);	
}


for(var i = 0; i<2 ; ++i){
	var bonusSprite = noone;
	switch ds_list_find_value(bonusList,i){
		case "invincibilité" :
			bonusSprite = spr_bonus_invinsibilite;
			break;
				
		case "energie" :
			bonusSprite = spr_bonus_energy
			break;
			
		case "vitesse" :
			bonusSprite = spr_bonus_speed;
			break;
	}
	if(bonusSprite != noone){
		with(obj_healthBar){
			if(self.hero == other.id){
				draw_sprite(bonusSprite,-1,self.x+40+i*40,self.y)	
			}
		}
	}
}