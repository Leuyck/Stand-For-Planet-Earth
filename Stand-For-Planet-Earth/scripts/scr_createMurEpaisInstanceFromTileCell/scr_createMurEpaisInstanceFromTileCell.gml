///scr_createMurEpaisInstanceFromTileCell(TileCell,x,y);
var tileCell = argument[0]
var xx = argument[1];
var yy = argument[2];
switch(tileCell){
	case 1 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais);
		break;
		
	case 2 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais);
		instance.image_angle =90;
		break;
		
	case 3 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_croix);
		break;
		
	case 4 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_plot);
		break;

	case 5 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_angle);
		break;
		
	case 6 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_angle);
		instance.image_angle =270
		break;
		
	case 7 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_angle);
		instance.image_angle =180;
		break;
		
	case 8 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_angle);
		instance.image_angle =90;
		break;
		
	case 10 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_bout);
		break;
		
	case 11 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_bout);
		instance.image_angle =270
		break;
		
	case 12 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_bout);
		instance.image_angle =180;
		break;
		
	case 13 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_bout);
		instance.image_angle =90;
		break;
		
	case 15 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_T);
		break;
		
	case 16 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_T);
		instance.image_angle =270
		break;
		
	case 17 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_T);
		instance.image_angle =180;
		break;
		
	case 18 : 
		var instance = instance_create_layer(xx,yy,"layer_murs",obj_mur_epais_T);
		instance.image_angle =90;
		break;
	
}
