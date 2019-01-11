switch fire1Coup {
	case 1:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackD1);
		fire1Coup++;
		damage = 2
		break;
	case 2:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackG1);
		fire1Coup++;
		damage = 2
		break;
	case 3:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackD2);
		fire1Coup++;
		damage = 3
		break;
	case 4:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackG2);
		fire1Coup = 1;
		damage = 4
		break;
}