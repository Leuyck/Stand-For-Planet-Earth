var hero = argument[0];
var grid = obj_grid.grid;

var gotox = (hero.x div obj_grid.cell_width) * obj_grid.cell_width;
var gotoy = (hero.y div obj_grid.cell_width) * obj_grid.cell_width;
if(mp_grid_path(grid, path, x, y, gotox, gotoy, 1)) {
    path_start(path, spdChase, path_action_stop, false);
    state = "walking";
    heroSpotted = true;
    return true;
}
else {
    heroSpotted = false;
    return false;
}
