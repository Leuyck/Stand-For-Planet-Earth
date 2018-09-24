///Initialize variables
DEBUG = false;
size = 1000;

image_speed = 0;
image_index = 0;

doorOpen = false;




openSpeed = (image_number - 1) / (openTime * room_speed);
closeSpeed =(image_number - 1) / (closeTime * room_speed);

alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;