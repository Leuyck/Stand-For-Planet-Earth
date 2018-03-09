image_speed = 1*(speed/40);;
event_inherited()

if (speed < 1) then instance_destroy();

image_angle+=rotation
speed = lerp(speed-1,speed,0.8);
//image_xscale = speed/20;
//image_yscale = speed/20;
