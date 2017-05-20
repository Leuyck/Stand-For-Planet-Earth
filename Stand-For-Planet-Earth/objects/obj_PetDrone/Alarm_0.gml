/// @description Passive move

patrolXOrigin = parent.x;           // Originale position X
patrolYOrigin = parent.y;           // Originale position Y

if(distance_to_object(parent)>patrolRange)
{
    patrolx = random_range(-patrolRange/2, patrolRange/2) + patrolXOrigin; 
    patroly = random_range(-patrolRange/2, patrolRange/2) + patrolYOrigin;
	alarm[0] = room_speed/2;
}
else if(path_index == -1)
{    
    patrolx = random_range(-patrolRange, patrolRange) + patrolXOrigin; 
    patroly = random_range(-patrolRange, patrolRange) + patrolYOrigin;
}