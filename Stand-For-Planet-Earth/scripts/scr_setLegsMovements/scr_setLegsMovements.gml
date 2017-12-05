///scr_setLegsMovements(enableLegs)

var enableLegs = argument[0]

if(enableLegs && deployed && canMove)
{
    var legsDirection = scr_getPlayerMoveDirection();
    
    with(legs_type)
    {
        visible = true;
    
        self.x = other.x;
        self.y = other.y;
		
        if(legsDirection !=noone)
        {
            self.image_speed = other.legsImageSpeed;
            self.image_angle = legsDirection;
        }
        else
        {
            self.image_speed = 0;
            self.image_index = 0;
        }
    }
}
else
{
    with(legs_type)
    {
        image_speed = 0;
        visible = false;
    }
}
