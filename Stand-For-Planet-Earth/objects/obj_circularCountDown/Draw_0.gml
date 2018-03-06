var stepsMax= (duration*stepsPerSec);
var steps = floor(timeRemaining*stepsPerSec);

if(job =="resurect"){
	var factor = (steps/stepsMax)*255
	var newColor = merge_color(make_color_rgb(0+factor,255-factor,255),c_black,0.3)
	draw_set_color(newColor); 
	draw_set_alpha(0.5);
}else{
	draw_set_color(color); 
	draw_set_alpha(0.5);
}

draw_primitive_begin(pr_trianglefan);
draw_vertex(x, y);
for(var i = 0; i <= steps; i += 1){
	var dir = 90+360 * i / stepsMax;
	if(dir >359) then dir-= 359;
	
	draw_vertex(x + lengthdir_x(radius, dir), y + lengthdir_y(radius, dir));
}	
draw_primitive_end();
draw_set_alpha(1);


