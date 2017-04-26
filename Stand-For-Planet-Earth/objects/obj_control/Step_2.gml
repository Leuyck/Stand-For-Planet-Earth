// Drag & drop
if mouse_check_button_pressed(mb_middle)
{
    grab = 1;
    grab_id = collision_point(mouse_x,mouse_y,all,true,true);
    
    if instance_exists(grab_id)
    {
        grab_len = point_distance(mouse_x,mouse_y,grab_id.x,grab_id.y);
        grab_dir = point_direction(mouse_x,mouse_y,grab_id.x,grab_id.y);
    }
}
if mouse_check_button_released(mb_middle) grab = 0;
if grab if instance_exists(grab_id) with grab_id {x=mouse_x+lengthdir_x(other.grab_len,other.grab_dir) y=mouse_y+lengthdir_y(other.grab_len,other.grab_dir)};

