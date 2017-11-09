
switch (resolution){
		case noone :
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
			break;		
		case 0 :
			width = 1920;
			height = 1080;
			break;
		case 1 :
			width = 1600;
			height = 900;
			break;
		case 2 :
			width = 1400;
			height = 1050;
			break;
		case 3 :
			width = 1366;
			height = 768;
			break;
		case 4 :
			width = 1280;
			height = 720;
			break;
		case 5 :
			width = 1024;
			height = 768;
			break;
		case 6 :
			width = 800;
			height = 480;
			break;
			
		default :
			if(resolution >6){
				resolution = 0;	
			}else if(resolution <0){
				resolution = 6	
			}
			break;		
}