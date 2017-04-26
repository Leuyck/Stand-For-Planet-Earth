///scr_PetDrone_activeMovements();

if(state=="passive")
{
    state = "swapping";
}
else if(state == "swapping" && image_index == sprite_get_number(spr_PetDrone_swap)-1)
{
    state = "empty"
}   
else if (state != "swapping")
{
    state = "empty"
}

if(distance_to_object(target)>attackRange)
{
    patrolx = target.x
    patroly = target.y

    if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
    {
        path_start(path, spd, path_action_stop, true);
    }
}
else
{
    scr_PetDrone_attack_heal();
}   
