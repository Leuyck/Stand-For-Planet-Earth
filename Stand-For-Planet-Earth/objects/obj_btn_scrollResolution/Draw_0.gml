/// @description 
switch (resolution){
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
}
draw_self()
draw_set_font (fnt_2_large);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text_ext_transformed(x, y-5,string(width) +" X " + string(height),20,200,1,1,0);
