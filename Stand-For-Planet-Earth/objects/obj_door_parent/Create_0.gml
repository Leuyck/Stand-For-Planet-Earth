///Initialize variables
DEBUG = false;
size = noone;

image_speed = 0;
image_index = 0;

automaticDoor = false;
detectionRange = 200;

doorOpen = false;

openTime = 0.5;    // temps d'ouverture en secondes
closeTime = 0.5;    // temps de fermeture en secondes
stayOpenTime = 1 // temps en secondes pendant lequel ça reste ouvert
blockedOpen = false;

openSpeed = (image_number - 1) / (openTime * room_speed);
closeSpeed =(image_number - 1) / (closeTime * room_speed);

alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;

