///scr_createMurFinInstanceFromTileCell(TileCell,x,y);
var tileCell = argument[0]
var xx = argument[1];
var yy = argument[2];
switch(tileCell){
	case 1 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin);
		break;
		
	case 2 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin);
		instance.image_angle =90;
		break;
		
	case 3 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_croix);
		break;
		
	case 4 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_plot);
		break;

	case 5 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_angle);
		break;
		
	case 6 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_angle);
		instance.image_angle =270
		break;
		
	case 10 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_angle);
		instance.image_angle =90;
		break;
		
	case 11 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_angle);
		instance.image_angle =180;
		break;
		
	case 7 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_bout);
		break;
		
	case 8 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_bout);
		instance.image_angle =180
		break;
		
	case 9 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_bout);
		instance.image_angle =270;
		break;
		
	case 14 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_bout);
		instance.image_angle =90;
		break;
		
	case 15 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_T);
		instance.image_angle =90
		break;
		
	case 16 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_T);
		break;
		
	case 17 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_T);
		instance.image_angle =180;
		break;
		
	case 18 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_T);
		instance.image_angle =270;
		break;
		
	case 20 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		break;
		
	case 21 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		instance.image_angle = 90;
		instance.image_xscale = -1;
		break;
		
	case 22 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		instance.image_angle =270
		instance.image_xscale = -1;
		break;
		
	case 23 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		instance.image_angle =180;
		break;
		
	case 25 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		instance.image_angle =270
		break;
		
	case 26 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		instance.image_xscale = -1;
		break;
		
	case 27 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		instance.image_angle =180;
		instance.image_xscale = -1;
		break;
		
	case 28 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_fin_45);
		instance.image_angle =90;
		break;
	
}
