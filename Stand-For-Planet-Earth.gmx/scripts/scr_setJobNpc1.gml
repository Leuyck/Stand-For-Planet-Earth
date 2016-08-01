///scr_setJobNpc1()
var dis = point_distance(x, y , obj_localPlayer_server.x, obj_localPlayer_server.y);
var directionToPlayer = point_direction(x, y , obj_localPlayer_server.x, obj_localPlayer_server.y);

//hero coordinates in the path
var gotox = (obj_localPlayer_server.x div 100)*100 + 50;
var gotoy = (obj_localPlayer_server.y div 100) * 100 + 50;
var disArrived= point_distance(x, y , gotox, gotoy);

if (!global.heroDetected && spd!=0)
{
    job = "patrol";
    if (alarm[0] <= 0)
    {
        path_end();
        speed = 0
    }
    if (alarm[1] <= 0)
    {
        //dir = choose (0 , 45, 90, 135, 180, 225, 270, 315);
        var patrolx = (random_range(patrolxMin, patrolxMax)div 100)*100+50;
        var patroly = (random_range(patrolyMin, patrolyMax)div 100)*100+50;
     
        if(mp_grid_path(global.grid, path, x, y, patrolx, patroly, 1))
        {
            path_start(path, spd, path_action_stop, false);
        
        }
        alarm[0] = room_speed *(choose (1, 2)); // temps de marche
        alarm[1] = alarm[0] + room_speed*(choose (0, 1, 2));// temps de marche + d'arret*/
        
        
    }
    
   
    /*var gotox = (1950 div 100)*100 + 50;
    var gotoy = (7025 div 100) * 100 + 50;
        
    if(mp_grid_path(global.grid, path, x, y, gotox, gotoy, 1))
    {
        path_start(path, spd, 3, false);
    
    }*/
  
    
    
}
else if (global.heroDetected)
{
    if (dis > attack_range)//si on est pas a porté de tirs
    {
        job = "chase";
        
     
        if(mp_grid_path(global.grid, path, x, y, gotox, gotoy, 1))
        {
            path_start(path, spdChase, path_action_stop, false);
        }
    }
    else // si on est a porté de tirs
    {
        path_end();
        job = "attack"
        
        speed = 0;
        direction = directionToPlayer;
    }
}   
else
{
    path_end();
    job= "stand";
    
}

