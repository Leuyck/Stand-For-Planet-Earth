///scr_PetBot_targetOnMouse(availableTarget);
availableTarget = argument[0];

if(collision_point(mouse_x,mouse_y,availableTarget,false,true)!=noone && collision_line(self.x, self.y, mouse_x, mouse_y, obj_decor_base, false, true) == noone)
{
    var target = collision_point(mouse_x,mouse_y,availableTarget,false,true)
	return target;
}