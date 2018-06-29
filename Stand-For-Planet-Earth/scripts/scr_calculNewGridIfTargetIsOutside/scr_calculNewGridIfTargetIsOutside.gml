///@Description scr_calculNewGridIfTargetIsOutside(targetid)
///If target is not on self grid
var target = argument[0];

if(collision_rectangle(ds_list_find_value(patrolRectangle, 0),ds_list_find_value(patrolRectangle,1),ds_list_find_value(patrolRectangle, 2),ds_list_find_value(patrolRectangle, 3),target,false,true) == noone){
	if(instance_exists(target)){
		patrolRectangle = scr_calculPatrolRectangle(x,y,target.x,target.y);
	}
	with(gridObject){
		scr_initialize_grid(owner.patrolRectangle);
	}
}