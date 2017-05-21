///scr_PetBot_targetOnMouse(availableTarget);
availableTarget = argument[0];

if(collision_point(mouse_x,mouse_y,availableTarget,false,true)!=noone)
{
    var target = collision_point(mouse_x,mouse_y,availableTarget,false,true)
	return target;
}