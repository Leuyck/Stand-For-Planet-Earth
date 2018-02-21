///scr_calculNewGridAroundObject(target);
var target = argument[0];

patrolRectangle = scr_calculPatrolRectangle(x,y,x+(target.x-x)*2,y+(target.y-y)*2);
with(gridObject){
	scr_initialize_grid(owner.patrolRectangle);
}
