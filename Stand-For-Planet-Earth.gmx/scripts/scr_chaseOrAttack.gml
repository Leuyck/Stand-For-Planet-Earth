var behaviour = argument[0];
var hero = argument[1];
var grid = obj_grid.grid;

switch(behaviour)
{
    case "chase":
        var gotox = (hero.x div 100) * 100 + 50;
        var gotoy = (hero.y div 100) * 100 + 50;
        if(mp_grid_path(grid, path, x, y, gotox, gotoy, 1)) {
            path_start(path, spdChase, path_action_stop, false);
            state = "walking";
            heroSpotted = true;
        }
        break;
        
    case "attack":
        path_end();
        state = "firing";
        heroSpotted = true;
        speed = 0;
        direction = point_direction(x, y , hero.x, hero.y);
        break;
}
