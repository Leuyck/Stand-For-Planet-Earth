if (!dashing)
{
    var old_angle = image_angle;
    var minMouseRange = 200;
    if(distance_to_point(mouse_x,mouse_y)>=minMouseRange)
    {
        image_angle =  point_direction(x + lengthdir_x(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) - lengthdir_y(weaponPosY, point_direction(x,y,mouse_x,mouse_y)), 
                                    y + lengthdir_y(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) + lengthdir_x(weaponPosY, point_direction(x,y,mouse_x,mouse_y)),
                                    mouse_x,mouse_y);
    }
    else
    {
        var mouseOnCircleX = x + lengthdir_x(minMouseRange, point_direction(x,y,mouse_x,mouse_y));
        var mouseOnCircleY = y + lengthdir_y(minMouseRange, point_direction(x,y,mouse_x,mouse_y));
        
        image_angle = point_direction(x + lengthdir_x(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) - lengthdir_y(weaponPosY, point_direction(x,y,mouse_x,mouse_y)), 
                                    y + lengthdir_y(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) + lengthdir_x(weaponPosY, point_direction(x,y,mouse_x,mouse_y)),
                                    mouseOnCircleX,mouseOnCircleY);;
    }
                                    
    if (place_meeting( x, y, obj_decor_base )) {
        image_angle = old_angle;
    }
    else {
        direction = point_direction(x,y,mouse_x,mouse_y);
    }
}
