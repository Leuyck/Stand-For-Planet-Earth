/// Create the grid
DEBUG = false;
cell_size = 64;
cell_width = cell_size;
cell_height = cell_size;

tempCell = array_create(0,0);
owner = noone;
init = false;

var numberOfCells = cell_size / 2;
grid = mp_grid_create(0, 0, room_width / numberOfCells, room_height / numberOfCells, cell_width, cell_height);
mp_grid_add_instances(grid, obj_mur_parent, false);
mp_grid_add_instances(grid, obj_mobilier_parent, false);

