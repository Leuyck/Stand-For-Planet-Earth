/// Fin d'alarme d'ouverture

image_speed = 0;
image_index = image_number - 1;
alarm[1] = stayOpenTime * room_speed
doorOpen=true;

if(!automaticDoor)
{
    with(obj_grid)
    {
        mp_grid_clear_rectangle(grid,other.x-other.sprite_width/2,other.y-other.sprite_height/2,other.x+other.sprite_width/2,other.y+other.sprite_height/2)
    }
}

