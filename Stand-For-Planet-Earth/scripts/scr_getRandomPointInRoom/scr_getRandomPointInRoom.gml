//scr_getRandomPointInRoom(x, y, maxDistance)

var xx = argument[0];
var yy = argument[1];
var maxDistance = argument[2];

var patrolAngle = random_range(0, 360);
var maxPatrolPoint = scr_getFarestPointInRoom(xx, yy, patrolAngle, maxDistance);
var maxPatrolPointX = string_extract_X(maxPatrolPoint);
var maxPatrolPointY = string_extract_Y(maxPatrolPoint);
var patrolX = random_range(xx, maxPatrolPointX); 
var	patrolY = random_range(yy, maxPatrolPointY);

return [patrolX, patrolY];