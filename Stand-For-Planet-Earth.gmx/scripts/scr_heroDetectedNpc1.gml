///scr_heroDetectedNpc1()



heroDirection = point_direction (x, y , obj_localPlayer_server.x, obj_localPlayer_server.y);
heroDistance = point_distance(x, y , obj_localPlayer_server.x, obj_localPlayer_server.y);
//wallDirection = point_direction (x, y , obj_wall.x, obj_wall.y);
//wallDistance = point_distance(x, y , obj_wall.x, obj_wall.y);


global.heroDetected = false;

if (heroDistance <= sight_range)
{
    for (var i = 0; i <= instance_number(obj_wall); i++) 
    {
        wallDirection = point_direction (x, y , obj_wall.x, obj_wall.y);
        wallDistance = point_distance(x, y , obj_wall.x, obj_wall.y);
        
        
    
        
        if (heroDirection == wallDirection)
        {
        show_debug_message ("il y a un wall devant");
        
            if (heroDistance < wallDistance)
            {
                global.heroDetected = true
            }
  
        }
    }
}
