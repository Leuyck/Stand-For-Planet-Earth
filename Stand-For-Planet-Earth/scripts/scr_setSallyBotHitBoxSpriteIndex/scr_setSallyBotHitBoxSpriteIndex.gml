///scr_setSallyBotHitBoxSpriteIndex()
switch obj_sallyBot.sprite_index{
	case spr_sallyBot_1_AttackD1 :
		sprite_index =spr_sallyBot_1_HitBoxD1;
		break;
		
	case spr_sallyBot_1_AttackD2 :
		sprite_index =spr_sallyBot_1_HitBoxD2;
		break;
		
	case spr_sallyBot_1_AttackG1 :
		sprite_index =spr_sallyBot_1_HitBoxG1;
		break;
	
	case spr_sallyBot_1_AttackG2 :
		sprite_index =spr_sallyBot_1_HitBoxG2;
		break;
		
	case spr_sallyBot_1_fire2 :
		sprite_index =spr_sallyBot_1_fire2_HitBox;
		break
	
	case spr_sallyBot_2_attack :
		sprite_index =spr_sallyBot_2_HitBox1;
		break;
	
	case spr_sallyBot_2_fire2 :
		sprite_index =spr_sallyBot_2_HitBox2
		break;
		
	default :
		sprite_index = noone;
		break;
}
if(sprite_index != noone) then image_index = obj_sallyBot.image_index;
