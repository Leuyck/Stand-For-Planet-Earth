// Actualisation des variables de la lumière
sl_light_active = parent.torch;
sl_light_x      = parent.x + lengthdir_x(25,323+parent.image_angle);
sl_light_y      = parent.y + lengthdir_y(25,323+parent.image_angle);
sl_light_angle  = parent.image_angle;
sl_light_power  = 0.85 + random(0.07);

