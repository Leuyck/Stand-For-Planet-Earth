///scr_setJobNpc1(hero)
var hero = argument[0]

var dis = point_distance(x, y , hero.x, hero.y);
var directionToPlayer = point_direction(x, y , hero.x, hero.y);

//hero coordinates in the path
var gotox = (hero.x div 100)*100 + 50;
var gotoy = (hero.y div 100) * 100 + 50;
//var disArrived= point_distance(x, y , gotox, gotoy);


global.heroDetected = false;

if (collision_line(x, y,hero.x, hero.y, obj_wall, false, true)==noone)//detect the hero
{
    global.heroDetected = true;
}



if (!global.heroDetected && spd!=0)
{
    job = "patrol";
    
    if (alarm[0] <= 0)//temps d'arret
    {
        path_end();
        state="standing"
        speed = 0
    }
    if (alarm[1] <= 0)//temps de course
    {
        var patrolx = (random_range(patrolxMin, patrolxMax)div 100)*100+50;
        var patroly = (random_range(patrolyMin, patrolyMax)div 100)*100+50;
     
        if(mp_grid_path(global.grid, path, x, y, patrolx, patroly, 1))
        {
            path_start(path, spd, path_action_stop, false);
        }
        dir = point_direction (x, y, patrolx, patroly);
        state="moving";
        alarm[0] = room_speed *(choose (1, 2)); // temps de marche
        alarm[1] = alarm[0] + room_speed*(choose (0, 1, 2));// temps de marche + d'arret*/  
    }

}
else if (global.heroDetected)
{
    if (dis > attack_range)//si on est PAS a porté de tirs
    {
        job = "chase";
        state="moving";
        
        if(mp_grid_path(global.grid, path, x, y, gotox, gotoy, 1))
        {
            path_start(path, spdChase, path_action_stop, false);
        }
        dir = point_direction(x, y, gotox, gotoy);
    }
    else // si on est a porté de tirs
    {
        path_end();
        job = "attack"
        state = "standing"
        
        speed = 0;
        direction = directionToPlayer;
    }
    alarm[0] = room_speed *(choose (1, 2)); //temps de poursuite
    alarm[1] = alarm[0] + room_speed*(choose (0, 1, 2));//temps de pause
}   
else // si on a pas de spd et que l'enemis n'est pas dans le coin. On se remet en stand.
{
    path_end();
    job= "stand";  
    state= "standing";
}

