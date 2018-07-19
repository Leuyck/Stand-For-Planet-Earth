event_inherited();

//var healthSize = self.currentHealth * 100 / self.maxHealth;
//if(healthSize != 100) {
//    draw_healthbar(x , y, x + 100, y + 15, healthSize, c_black, c_red, c_lime, 0, true, true);
//}

if(DEBUG_RANGES || DEBUG_ATTACK_RANGE) {
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_circle(x, y, attack_range, true);
	draw_set_color(c_black);
    draw_circle(x, y, attack_range_max, true);
    draw_set_alpha(1);
}