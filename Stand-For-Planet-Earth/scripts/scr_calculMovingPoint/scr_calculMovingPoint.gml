///@descrition scr_calculMovingPoint(speed,direction)
/// @arg speed
/// @arg direction

var spd = argument0;
var dir = argument1;

var stuck = true;

var xtarg = x+lengthdir_x(spd,dir);
var ytarg = y+lengthdir_y(spd,dir);

if place_free(xtarg,ytarg) {
    x = xtarg;
    y = ytarg;
	stuck = false;
}else {
    var sweep_interval = 10;
    
    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
            var angle_to_check = dir+angle*multiplier;
            xtarg = x+lengthdir_x(spd, angle_to_check);
            ytarg = y+lengthdir_y(spd, angle_to_check);     
            if place_free(xtarg,ytarg) {
                x = xtarg;
                y = ytarg;  
				stuck = false;
                exit;       
            }   
        }
    }
	if(stuck == true){//anti stuck system
		var stuckingObject = instance_nearest(xtarg,ytarg,obj_decor_base);
		var stuckDir = point_direction(x,y,stuckingObject.x,stuckingObject.y);
		var newdir =stuckDir-180;
		if(newdir<0) then newdir+=360;
		
		if(angle_difference(dir,stuckDir)>=44||angle_difference(dir,stuckDir)<=-44){ //anti flick if you try to walkin toward wall
			xtarg = x+lengthdir_x(spd,newdir);
			ytarg = y+lengthdir_y(spd,newdir);
			stuck=false;
			x=xtarg;
			y=ytarg;
		}
	}
}