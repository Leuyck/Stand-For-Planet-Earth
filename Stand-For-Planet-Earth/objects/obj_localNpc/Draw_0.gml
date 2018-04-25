draw_self();

var healthSize = self.currentHealth * 100 / self.maxHealth;
if(healthSize != 100) {
    draw_healthbar(x , y, x + 100, y + 15, healthSize, c_black, c_red, c_lime, 0, true, true);
}


if(DEBUG_PATH) {
    draw_set_alpha(0.8);
    draw_set_color(c_orange);
	if(path_exists(path)){
		draw_path(path, x, y, true);
	}
    draw_set_alpha(1);
}
if(DEBUG_PATROL_AREA) {
    draw_set_alpha(0.5);
    draw_set_color(c_yellow);
    draw_circle(patrolXOrigin, patrolYOrigin, patrolRange, true);
    draw_set_alpha(1);
}