event_inherited();

var healthSize = self.currentHealth * 100 / self.maxHealth;
if(healthSize != 100) {
    draw_healthbar(x , y, x + 100, y + 15, healthSize, c_black, c_red, c_lime, 0, true, true);
}