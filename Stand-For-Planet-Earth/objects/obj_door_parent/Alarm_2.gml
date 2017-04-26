/// Fin d'alarme de fermeture

image_index = 0;
image_speed = 0;

doorOpen=false;

alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;

if(!automaticDoor)
{
    with(obj_grid)
    {
        mp_grid_add_rectangle(grid,other.x-other.sprite_width/2,other.y-other.sprite_height/2,other.x+other.sprite_width/2,other.y+other.sprite_height/2)
    }
}

