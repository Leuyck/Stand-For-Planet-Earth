///@Description scr_calculNewGridIfTargetIsOutside(targetid)

var target = argument[0];


///If petBot is not on petdrone's grid
if(collision_rectangle(ds_list_find_value(patrolRectangle, 0),ds_list_find_value(patrolRectangle,1),ds_list_find_value(patrolRectangle, 2),ds_list_find_value(patrolRectangle, 3),target,false,true) == noone){
	patrolRectangle = scr_calculPatrolRectangle(x,y,target.x,target.y);
	with(gridObject){
		scr_initialize_grid(owner.patrolRectangle);
	}
}