///scr_setLegsMovements(enableLegs)

var enableLegs = argument[0]

if(enableLegs && deployed)
{
    var legsDirection = scr_getPlayerMoveDirection();
    
    with(legs_type)
    {
        visible = true;
        var hspd = other.rightKey - other.leftKey;
        var vspd = other.downKey - other.upKey;
    
        self.x = other.x
        self.y= other.y
        
        if(hspd !=0 || vspd !=0)
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
