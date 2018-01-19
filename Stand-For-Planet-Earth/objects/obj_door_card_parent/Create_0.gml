event_inherited();

automaticDoor = false;

openTime = 1;    // temps d'ouverture en secondes
closeTime = 1;    // temps de fermeture en secondes
stayOpenTime = 2; // temps en secondes pendant lequel ça reste ouvert

openSpeed = (image_number - 1) / (openTime * room_speed);
closeSpeed =(image_number - 1) / (closeTime * room_speed);

blockedOpen = true;
cardToOpen = noone;


alerteMessage = 0;