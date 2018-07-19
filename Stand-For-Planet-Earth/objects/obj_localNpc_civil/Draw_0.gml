/// @description 
event_inherited();

if(DEBUG_RANGES) {
	draw_set_alpha(0.8);
    draw_set_color(c_red);
    draw_circle(x, y, hearRange, true);
	draw_set_color(c_green);
	draw_circle(x, y, viewRange, true);
    draw_set_alpha(1);
}