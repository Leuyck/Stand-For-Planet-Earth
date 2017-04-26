///scr_PetDrone_passiveMovements();
patrolXOrigin = parent.x;           // Originale position X
patrolYOrigin = parent.y;           // Originale position Y
    
if (patrolPaused)
{
    if(distance_to_object(parent)>patrolRange)
    {
        patrolx = random_range(-patrolRange/2, patrolRange/2) + patrolXOrigin; 
        patroly = random_range(-patrolRange/2, patrolRange/2) + patrolYOrigin;
        patrolPaused = false;

    }
    else if(path_index == -1 && alarm[0] == -1)
    {    
        patrolPaused = false;
        patrolx = random_range(-patrolRange, patrolRange) + patrolXOrigin; 
        patroly = random_range(-patrolRange, patrolRange) + patrolYOrigin;
    }
}
else
{
    if(path_index == -1 && alarm[0] == -1)
    {
        patrolPaused = true;
        alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5));
    }
    else
    {
        alarm[0] = -1;
    }
}
if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
{
        path_start(path, spd, path_action_stop, true);
}
