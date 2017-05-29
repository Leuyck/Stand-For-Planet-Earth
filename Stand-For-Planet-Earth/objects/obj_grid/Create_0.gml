/// Create the grid
DEBUG = false;
cell_width = 64;
cell_height = 64;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

//add the walls
mp_grid_add_instances(grid, obj_mur_parent, false);
mp_grid_add_instances(grid, obj_door, true); 

