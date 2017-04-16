///scr_PetDrone_passiveMovements();

var grid = obj_grid.grid;
patrolXOrigin = parent.x;           // Originale position X
patrolYOrigin = parent.y;           // Originale position Y
    
if(distance_to_object(parent)>patrolRange)
{
    if(alarm[2] == -1)
    {
        var patrolx = random_range(-patrolRange/2, patrolRange/2) + patrolXOrigin; 
        var patroly = random_range(-patrolRange/2, patrolRange/2) + patrolYOrigin;
        if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
        {
                path_start(path, spd, path_action_stop, true);
        }
        alarm[2] = 1*room_speed;
    }
}
else
{
    if(alarm[0] > 0) 
    {
        speed = 0;
    }
    // The patrol just finished
    else if (path_index == -1 && alarm[0] == -1) 
    {
        alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5));
    }
    else if(path_index == -1) 
    {    
        var patrolx = random_range(-patrolRange, patrolRange) + patrolXOrigin; 
        var patroly = random_range(-patrolRange, patrolRange) + patrolYOrigin;
        if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
        {
            path_start(path, spd, path_action_stop, true);
        }
    }
}

