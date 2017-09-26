///scr_PetDrone_passiveMovements();
var grid = gridObject.grid;

patrolXOrigin = parent.x;           // Originale position X
patrolYOrigin = parent.y;           // Originale position Y

if(path_index == -1 && alarm[0] == -1)
{
	alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5));

}
if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
{
        path_start(path, spd, path_action_stop, true);
}
///If petBot is not on petdrone's grid
if(collision_rectangle(ds_list_find_value(patrolRectangle, 0),ds_list_find_value(patrolRectangle,1),ds_list_find_value(patrolRectangle, 2),ds_list_find_value(patrolRectangle, 3),parent,false,true) == noone){
	patrolRectangle = scr_calculPatrolRectangle(x,y,parent.x,parent.y);
	with(gridObject){
		scr_initialize_grid(owner.patrolRectangle);
	}
}