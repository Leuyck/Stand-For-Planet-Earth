draw_set_color(color); 
draw_set_alpha(0.5);

var stepsMax= duration*stepsPerSec;
var steps = floor(timeRemaining*stepsPerSec);

draw_primitive_begin(pr_trianglefan);
draw_vertex(x, y);
for(var i = 0; i <= steps; i += 1){
	var dir = 90+360 * i / stepsMax;
	if(dir >359) then dir-= 359;
	
	draw_vertex(x + lengthdir_x(radius, dir), y + lengthdir_y(radius, dir));
}	
draw_primitive_end();

