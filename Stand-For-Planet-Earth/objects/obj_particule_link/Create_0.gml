/// @description 
xOrigin = x;
yOrigin = y;
initDirection = direction;
speed = -1;
color = choose(c_white,c_aqua);
linkedTarget = noone;
flyingTime = 0.5;

radius = 5
sizeFactor = choose(0.1,0.3,0.5,0.8,1);


alarm[0] = flyingTime * room_speed