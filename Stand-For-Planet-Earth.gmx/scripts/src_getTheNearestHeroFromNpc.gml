var npc = argument[0];
var nearestHero = noone;
var bestDistance = noone;

with(obj_localPlayer)
{
    if (collision_line(npc.x, npc.y, self.x, self.y, obj_wall, false, true) == noone)
    {
        var distance = point_distance(npc.x, npc.y, self.x, self.y);
        if(bestDistance == noone || distance < bestDistance)
        {
            bestDistance = distance;
            nearestHero = id;
        }
    }
}

return nearestHero;
