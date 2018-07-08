draw_self();

if(DEBUG_PATH) {
    draw_set_alpha(0.8);
    draw_set_color(c_red);
	if(path_exists(path)){
		draw_path(path, x, y, true);
		for(var i=0 ; i < path_get_number(path) ; i++){
	        draw_circle_colour(path_get_point_x(path, i), path_get_point_y(path, i), 4, c_red, c_red, false);
	    }
		draw_circle_colour(nextPositionX, nextPositionY, 4, c_blue, c_blue, false);
	}
    draw_set_alpha(1);
}

if(DEBUG_PATROL_AREA) {
    draw_set_alpha(0.5);
    draw_set_color(c_orange);
    draw_circle(patrolXOrigin, patrolYOrigin, patrolRange, true);
	draw_set_alpha(0.2);
	draw_set_color(c_red);
	if(patrolRectangle != noone) {
	draw_rectangle(
		ds_list_find_value(patrolRectangle, 0),
		ds_list_find_value(patrolRectangle, 1),
		ds_list_find_value(patrolRectangle, 2),
		ds_list_find_value(patrolRectangle, 3),
		false);
	}
    draw_set_alpha(1);
}