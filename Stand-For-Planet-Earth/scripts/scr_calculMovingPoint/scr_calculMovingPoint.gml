///@descrition scr_calculMovingPoint(speed,direction)
/// @arg speed
/// @arg direction

var spd = argument0;
var dir = argument1;

var stuck = true;

var xtarg = x+lengthdir_x(spd,dir);
var ytarg = y+lengthdir_y(spd,dir);

var blockingObject = noone;
for(var i = 0; i <ds_list_size(objectBlockingMovement); i++){
	if (place_meeting(xtarg, ytarg, ds_list_find_value(objectBlockingMovement,i))==true){
			blockingObject = ds_list_find_value(objectBlockingMovement,i)
			break;
	}
}

if (blockingObject==noone) {
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
			if (place_meeting(xtarg, ytarg,blockingObject)==false){
	            x = xtarg;
	            y = ytarg;  
				stuck = false;
	            exit;       
	        }   
	    }
	}
	if(stuck == true){//anti stuck system
		var newDir = point_direction(x+lengthdir_x(2,dir),y+lengthdir_y(2,dir),x,y);
		
		if(angle_difference(dir,newDir)<=44&&angle_difference(dir,newDir)>=-44){ //anti flick if you try to walkin toward wall
			xtarg = x+lengthdir_x(spd,newDir);
			ytarg = y+lengthdir_y(spd,newDir);
			x=xtarg;
			y=ytarg;
			stuck=false;
		}
	}
}