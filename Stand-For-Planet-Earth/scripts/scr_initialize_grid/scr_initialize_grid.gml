///@description scr_initialize_grid(patrolRectangleList);
var list = argument[0];

mp_grid_destroy(grid);

var minx = ds_list_find_value(list,0);
var miny = ds_list_find_value(list,1);
var maxx = ds_list_find_value(list,2);
var maxy = ds_list_find_value(list,3);

var horizontalSize = maxx-minx;
var verticalSize = maxy-miny;

var hcells = horizontalSize div cell_width;
var vcells = verticalSize div cell_height;

grid = mp_grid_create(minx, miny, hcells, vcells, cell_width, cell_height);

for(var i=0;i<ds_list_size(gridInstances);i++){
	mp_grid_add_instances(grid, ds_list_find_value(gridInstances,i), false);
} 

x=minx;
y=miny;