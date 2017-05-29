///alarm de la rotation
if (deploy == true)
{
    if(global.playerId == self.turretId)
    {
        if (instance_exists(targetNPC) && distance_to_point(targetNPC.x,targetNPC.y) <= attack_range &&ennemySpotted == true)
        {
            var targetDirection = point_direction(x,y,targetNPC.x,targetNPC.y)
            
            if (angle_difference(direction,targetDirection)>5)
            {
                direction -= fricMin
            }
            else if (angle_difference(direction, targetDirection)<-5)
            {
                direction += fricMin
            }
        }
        else
        {
            direction += fricMax;
        }
    }
}
alarm[1] = 1;




