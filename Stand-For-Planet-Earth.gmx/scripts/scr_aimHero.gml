if (!dashing)
{
    var newDirection = point_direction(x, y, mouse_x, mouse_y);
    var xPos = x + lengthdir_x(sprite_width/2 + 15, newDirection);
    var yPos = y + lengthdir_y (sprite_width/2 + 15, newDirection);
    
    if(!collision_line(x, y, xPos, yPos, obj_wall, false, true)) {
        direction = newDirection;
        image_angle = newDirection;
    }
}
