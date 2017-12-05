///@description scr_initialize_grid(patrolRectangleList);
var list = argument[0];

mp_grid_destroy(grid);

var minx = floor(ds_list_find_value(list,0));
var miny = floor(ds_list_find_value(list,1));
var maxx = ceil(ds_list_find_value(list,2));
var maxy = ceil(ds_list_find_value(list,3));

// SET THE PIXEL INTO CELLS VALUE (FACTOR 64);
var rest = minx mod cell_width;
if(rest < cell_width/2) then rest +=cell_width;
minx-=rest;

rest = miny mod cell_width;
if(rest < cell_width/2) then rest +=cell_width;
miny-=rest;

rest = maxx mod cell_width;
if(rest > cell_width/2) then rest +=cell_width;
maxx+=abs(cell_width - rest);

rest = maxy mod cell_width;
if(rest > cell_width/2) then rest +=cell_width;
maxy+=abs(cell_width - rest);

var horizontalSize = maxx-minx;
var verticalSize = maxy-miny;

var hcells = horizontalSize div cell_width;
var vcells = verticalSize div cell_height;

grid = mp_grid_create(minx, miny, hcells, vcells, cell_width, cell_height);

for(var i=0;i<ds_list_size(gridInstances);i++){
	mp_grid_add_instances(grid, ds_list_find_value(gridInstances,i), true);
} 

x=minx;
y=miny;