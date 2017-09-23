/// Create the grid
DEBUG = false;
cell_width = 64;
cell_height = 64;

miny = y;
maxy= y;
minx = x;
maxx = x;

tempCell=noone

owner = collision_point(x,y,obj_localNpc,false,true);
grid = mp_grid_create(0,0,0,0,0,0);

gridInstances = ds_list_create()
ds_list_add(gridInstances, obj_mur_parent, obj_door_parent);

scr_initialize_grid();