/// @description 
parent = noone;
genre = noone;
exploded = false;
image_speed = 1;

numberOfPieces =irandom_range(3,10);
numberOfFlaques = irandom_range(1,3);

humainElement = ds_list_create();
humainElement = scr_fillHumainElementList();
robotElement = ds_list_create();
robotElement = scr_fillRobotElementList();
