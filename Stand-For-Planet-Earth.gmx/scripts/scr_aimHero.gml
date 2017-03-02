
if (instance_exists(obj_chatTyping) && obj_chatTyping.isTyping == false)
{
    if (!dashing && deployed)
    {
        var mouseRange = distance_to_point(mouse_x,mouse_y)+150;
        var mousePositionX = x + lengthdir_x(mouseRange, point_direction(x,y,mouse_x,mouse_y));
        var mousePositionY = y + lengthdir_y(mouseRange, point_direction(x,y,mouse_x,mouse_y));
        
        image_angle =  point_direction (x + lengthdir_x(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) - lengthdir_y(weaponPosY, point_direction(x,y,mouse_x,mouse_y)), 
                                    y + lengthdir_y(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) + lengthdir_x(weaponPosY, point_direction(x,y,mouse_x,mouse_y)),
                                    mousePositionX,mousePositionY);
    
        direction = point_direction(x,y,mouse_x,mouse_y); 
    }
}
