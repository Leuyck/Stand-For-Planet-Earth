var grid = obj_grid.grid;

if (alarm[0] <= 0) // temps de course
{
    path_end();
    state = "standing"
    speed = 0;
}

if (alarm[1] <= 0) // temps d'arret
{
    var patrolx = random_range(-patrolRange, patrolRange)+ xOrigin; // point random de la patrouille en x
    var patroly = random_range(-patrolRange, patrolRange)+ yOrigin; // point random de la patrouille en y
    var gotox = (patrolx div 100) * 100 + 50;
    var gotoy = (patroly div 100) * 100 + 50;
    if(mp_grid_path(grid, path, x, y, gotox, gotoy, 1)) {
        path_start(path, spd, path_action_stop, false);
        state = "walking";
    }
    alarm[0] = room_speed * (choose (1, 2)); // temps de marche
    alarm[1] = alarm[0] + room_speed*(choose (0, 1, 2)); // temps de marche + d'arret
}
