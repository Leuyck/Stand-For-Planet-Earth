var hero = argument[0];
var grid = obj_grid.grid;

if(mp_grid_path(grid, path, x, y, hero.x, hero.y, true)) {
    path_start(path, spdChase, path_action_stop, false);
    state = "walking";
    ennemySpotted = true;
    return true;
}
else {
    ennemySpotted = false;
    return false;
}
