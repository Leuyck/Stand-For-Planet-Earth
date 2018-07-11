///@description scr_calculPatrolRectangle(x, y);
var patrolRectangle = ds_list_create();

var xx = argument[0];
var yy = argument[1];

var right = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "right");
var left = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "left");
var top = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "top");
var bottom = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "bottom");

// Ajout de 8 autres coordonnées pour mieux préciser le rectangle de patrouille dans le cas
// ou la pièce n'est pas rectangulaire. Cela permet d'éviter qu'un npc aille dans une jonction
// de mur d'une pièce à côté.

var topleftx = scr_getClosestPointToRoomLimits(xx, top, patrolRange, "left");
var toplefty = scr_getClosestPointToRoomLimits(left, yy, patrolRange, "top");

var toprightx = scr_getClosestPointToRoomLimits(xx, top, patrolRange, "right");
var toprighty = scr_getClosestPointToRoomLimits(right, yy, patrolRange, "top");

var bottomleftx = scr_getClosestPointToRoomLimits(xx, bottom, patrolRange, "left");
var bottomlefty = scr_getClosestPointToRoomLimits(left, yy, patrolRange, "bottom");

var bottomrightx = scr_getClosestPointToRoomLimits(xx, bottom, patrolRange, "right");
var bottomrighty = scr_getClosestPointToRoomLimits(right, yy, patrolRange, "bottom");

ds_list_add(
	patrolRectangle, 
	max(left, topleftx, bottomleftx), 
	max(top, toplefty, toprighty), 
	min(right, toprightx, bottomrightx), 
	min(bottom, bottomlefty, bottomrighty)
);

return patrolRectangle;