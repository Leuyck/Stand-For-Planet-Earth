var newPath = argument[0];

path = newPath;
positionInPath = 1;
nextPositionX = path_get_point_x(path, positionInPath);
nextPositionY = path_get_point_y(path, positionInPath);
alarm[1] = maxTimeToReachNextPosition * room_speed; // alarme gérant un blocage pour aller au point du path.