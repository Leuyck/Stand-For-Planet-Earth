
if(resolution == noone){
	switch (width){
		case 1920 :
			resolution = 0;
			break;
		case 1600 :
			resolution = 1;
			break;
		case 1400 :
			resolution = 2;
			break;
		case 1366 :
			resolution = 3;
			break;
		case 1280 :
			resolution = 4;
			break;
		case 1024 :
			resolution = 5;
			break;
		case 800 :
			resolution = 6;
			break;

	}
}
if(resolution >6){
	resolution = 0;	
}else if(resolution <0){
	resolution = 6	
}