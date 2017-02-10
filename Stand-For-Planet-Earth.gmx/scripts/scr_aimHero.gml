if (!dashing)
{
    var old_angle = image_angle;
    if(distance_to_point(mouse_x,mouse_y)>=100)
    {
        image_angle =  point_direction(x + lengthdir_x(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) - lengthdir_y(weaponPosY, point_direction(x,y,mouse_x,mouse_y)), 
                                    y + lengthdir_y(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) + lengthdir_x(weaponPosY, point_direction(x,y,mouse_x,mouse_y)),mouse_x,mouse_y);
    }
    else
    {
        image_angle = point_direction(x + lengthdir_x(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) - lengthdir_y(weaponPosY, point_direction(x,y,mouse_x,mouse_y)), 
                                    y + lengthdir_y(weaponPosX, point_direction(x,y,mouse_x,mouse_y)) + lengthdir_x(weaponPosY, point_direction(x,y,mouse_x,mouse_y)),mouse_x,mouse_y);;
    }
                                    
    if (place_meeting( x, y, obj_decor_base )) {
        image_angle = old_angle;
    }
    else {
        direction = point_direction(x,y,mouse_x,mouse_y);
    }
}
