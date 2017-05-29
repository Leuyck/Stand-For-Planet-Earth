var grid = obj_grid.grid;

// Pausing the patrol
if(alarm[0] > 0) {
    state = "standing";
    return true;
}

// The patrol just finished
else if (path_index == -1 && alarm[0] == -1) {
    alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5, 2));
    state = "standing";
    return true;
}

// The pause is ended.
else if(path_index == -1) {
    var patrolx = random_range(-patrolRange, patrolRange) + patrolXOrigin; 
    var patroly = random_range(-patrolRange, patrolRange) + patrolYOrigin;
    
    if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) {
        path_start(path, spd, path_action_stop, false);
        state = "walking";
        return true;
    }
    else {
        state = "standing";
        return false;
    }
}

// Npc is patroling
else {
    state = "walking";
    return true;
}
