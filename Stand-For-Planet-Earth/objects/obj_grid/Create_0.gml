/// Create the grid
DEBUG = false;
cell_width = 64;
cell_height = 64;

tempCell=array_create(0,0);

owner = collision_point(x,y,obj_localNpc,false,true);

grid = mp_grid_create(0,0,0,0,0,0);

gridInstances = ds_list_create()
ds_list_add(gridInstances, obj_mur_parent, obj_door_parent,obj_fenetre);

scr_initialize_grid(owner.patrolRectangle);