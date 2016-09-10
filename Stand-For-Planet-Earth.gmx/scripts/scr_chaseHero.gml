var hero = argument[0];
var grid = obj_grid.grid;

var gotox = (hero.x div 100) * 100 + 50;
var gotoy = (hero.y div 100) * 100 + 50;
if(mp_grid_path(grid, path, x, y, gotox, gotoy, 1)) {
    path_start(path, spdChase, path_action_stop, false);
    state = "walking";
    heroSpotted = true;
}
