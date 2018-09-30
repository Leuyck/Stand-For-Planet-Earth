switch fire1Coup {
	case 1:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackD1);
		fire1Coup++;
		break;
	case 2:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackG1);
		fire1Coup++;
		break;
	case 3:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackD2);
		fire1Coup++;
		break;
	case 4:
		ds_map_replace(sprites,"fire1", spr_sallyBot_1_AttackG2);
		fire1Coup = 1;
		break;
}