///scr_destroyNpcWhenDead()

if (currentHealth <= 0) {
    currentHealth = 0;
	normalSpd = 0;
	speed = 0
	if(path_exists(path)) {
		path_delete(path);
	}
   	instance_destroy();
}
