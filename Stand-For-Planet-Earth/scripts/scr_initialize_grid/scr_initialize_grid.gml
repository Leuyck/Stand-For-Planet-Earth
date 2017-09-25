///@description scr_initialize_grid();
mp_grid_destroy(grid);
var calculRange = 2000;



for(var i=0;i<=calculRange;i+=10){
	if(collision_point(x,miny,obj_mur_parent,true,true)==noone && miny>=10){
		miny-=10;
	}
	if(collision_point(x,maxy,obj_mur_parent,true,true)==noone && maxy<=room_height-10){
		maxy+=10;
	}
	if(collision_point(minx,y,obj_mur_parent,true,true)==noone && minx >=10){
		minx-=10;
	}
	if(collision_point(maxx,y,obj_mur_parent,true,true)==noone &&maxx<=room_width-10){
		maxx+=10;
	}
	if((collision_point(x,miny,obj_mur_parent,true,true)!=noone || miny==0) &&
	   (collision_point(x,maxy,obj_mur_parent,true,true)!=noone || maxy==room_height) &&
	   (collision_point(minx,y,obj_mur_parent,true,true)!=noone || minx ==0)&&
	   (collision_point(maxx,y,obj_mur_parent,true,true)!=noone || maxx==room_width)){
			break;
	   }
}

var horizontalSize = maxx-minx;
var verticalSize = maxy-miny;

var hcells = horizontalSize div cell_width;
var vcells = verticalSize div cell_height;

grid = mp_grid_create(minx, miny, hcells, vcells, cell_width, cell_height);


for(var i=0;i<ds_list_size(gridInstances);i++){
	mp_grid_add_instances(grid, ds_list_find_value(gridInstances,i), false);
} 