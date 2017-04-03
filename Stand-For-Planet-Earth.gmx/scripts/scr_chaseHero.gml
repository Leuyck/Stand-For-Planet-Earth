var hero = argument[0];
var grid = obj_grid.grid;

if(mp_grid_path(grid, path, x, y, hero.x, hero.y, true)) {
    path_start(path, spdChase, path_action_stop, false);
    ds_map_replace(imageSpeeds, "walking", 0.5);
    state = "walking";
    ennemySpotted = true;
    return true;
}
else {
    ds_map_replace(imageSpeeds, "walking", 0.25);
    ennemySpotted = false;
    return false;
}
