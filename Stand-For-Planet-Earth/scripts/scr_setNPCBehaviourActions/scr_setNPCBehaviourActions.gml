behaviour = src_getDefaultNpcBehaviour();

switch(behaviour) {
	case "walking":
		src_patrol();
		break;
			
	case "waiting":
		src_wait();
		break;
}