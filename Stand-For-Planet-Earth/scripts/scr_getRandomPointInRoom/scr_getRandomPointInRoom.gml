///scr_getRandomPointInRoom(x, y, maxDistance)
/// Retourne un tableau à 2 entrées (0:X, 1:Y)

var xx = argument[0];
var yy = argument[1];
var maxDistance = argument[2];

var patrolAngle = random_range(0, 360);
var maxPatrolPoint = scr_getFarestPointInRoom(xx, yy, patrolAngle, maxDistance);
var patrolX = random_range(xx, maxPatrolPoint[0]); 
var	patrolY = random_range(yy, maxPatrolPoint[1]);

return [patrolX, patrolY];