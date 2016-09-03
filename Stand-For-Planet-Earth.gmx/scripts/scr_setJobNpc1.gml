///scr_setJobNpc1(hero)
var heroToChase = src_getTheNearestHeroFromNpc(id);
var grid = obj_grid.grid;

if(heroToChase == noone && spd!=0) {
    job = "patrol";
}
else if(heroToChase != noone) {
    var distanceToHero = point_distance(x, y , heroToChase.x, heroToChase.y);
    if(distanceToHero > sight_range)
        then job = "patrol";
    else if (distanceToHero > attack_range)//si on est PAS a porté de tirs
        then job = "chase";
    else 
        job = "attack"; // si on est a porté de tirs
}
else {
    job = "waiting";
}

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
            if(mp_grid_path(grid, path, x, y, patrolx, patroly, 1)) //déplacement 
            then path_start(path, spd, path_action_stop, false);
            state = "moving";
            alarm[0] = room_speed * (choose (1, 2)); // temps de marche
            alarm[1] = alarm[0] + room_speed*(choose (0, 1, 2)); // temps de marche + d'arret
        }
        break;
        
    case "chase":
        var gotox = (heroToChase.x div 100) * 100 + 50;
        var gotoy = (heroToChase.y div 100) * 100 + 50;
        if(mp_grid_path(grid, path, x, y, gotox, gotoy, 1))
        then path_start(path, spdChase, path_action_stop, false);
        state = "moving";
        break;
        
    case "attack":
        path_end();
        state = "standing";
        speed = 0;
        direction = point_direction(x, y , heroToChase.x, heroToChase.y);
        break;
        
    default : // si on a pas de spd et que l'enemis n'est pas dans le coin. On se remet en stand.
        path_end();
        job = "stand";  
        state = "standing";
    break;
}

