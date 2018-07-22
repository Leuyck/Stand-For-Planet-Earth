event_inherited();

if(DEBUG_RANGES || DEBUG_ATTACK_RANGE) {
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_circle(x, y, attack_range, true);
    draw_set_alpha(1);
}