///src_getTheNearestVisibleEnnemyFromIA(idOfIA,obj_ennemy)

var IA = argument[0];
var ennemy = argument[1];
var nearestEnnemy = noone;
var bestDistance = noone;

with(ennemy)
{
    if (collision_line(IA.x, IA.y, self.x, self.y, obj_mur_parent, false, true) == noone)
    {
        var distance = point_distance(IA.x, IA.y, self.x, self.y);
        if(bestDistance == noone || distance < bestDistance)
        {
            bestDistance = distance;
            nearestEnnemy = self.id;
        }
    }else if (collision_line(IA.x, IA.y, self.x, self.y, obj_door_parent, false, true) == noone) {
        var distance = point_distance(IA.x, IA.y, self.x, self.y);
        if(bestDistance == noone || distance < bestDistance)
        {
            bestDistance = distance;
            nearestEnnemy = self.id;
        }
	}
}

return nearestEnnemy;
