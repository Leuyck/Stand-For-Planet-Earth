///scr_setJobNpc1(hero)

var heroToChase = noone;
if(heroSpotted) {
    heroToChase = src_getTheNearestHeroFromNpc(id);
}
else {
    heroToChase = src_getTheNearestVisibleHeroFromNpc(id);
}

var job = scr_getJobToDo(id, heroToChase);
var grid = obj_grid.grid;

// Do the job
switch(job)
{
    case "patrol":
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
        break;
        
    case "chase":
        var gotox = (heroToChase.x div 100) * 100 + 50;
        var gotoy = (heroToChase.y div 100) * 100 + 50;
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
        direction = point_direction(x, y , heroToChase.x, heroToChase.y);
        break;
        
    default : // si on a pas de spd et que l'enemis n'est pas dans le coin. On se remet en stand.
        path_end();
        job = "stand";  
        state = "standing";
    break;
}

