if (!dashing)
{
    var old_angle = image_angle;
    image_angle = point_direction(x, y, mouse_x, mouse_y);
    if (place_meeting( x, y, obj_decor_base )) {
        image_angle = old_angle;
    }
    else {
        direction = image_angle;
    }
}
