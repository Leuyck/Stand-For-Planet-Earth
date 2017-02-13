if (!dashing)
{
    var minMouseRange = 200;
    var mousePositionX = mouse_x;
    var mousePositionY = mouse_y;
    
    if(distance_to_point(mouse_x,mouse_y)<minMouseRange)
    {
        mousePositionX = x + lengthdir_x(minMouseRange, point_direction(x,y,mouse_x,mouse_y));
        mousePositionY = y + lengthdir_y(minMouseRange, point_direction(x,y,mouse_x,mouse_y));
    }
    
    image_angle =  point_direction (x + lengthdir_x(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) - lengthdir_y(weaponPosY, point_direction(x,y,mouse_x,mouse_y)), 
                                    y + lengthdir_y(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) + lengthdir_x(weaponPosY, point_direction(x,y,mouse_x,mouse_y)),
                                    mousePositionX,mousePositionY);

    direction = point_direction(x,y,mouse_x,mouse_y); 
}
