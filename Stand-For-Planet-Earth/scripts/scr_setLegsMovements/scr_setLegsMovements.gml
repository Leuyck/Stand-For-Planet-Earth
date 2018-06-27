///scr_setLegsMovements()
if(legs_type != noone && instance_exists(legs)){
	if(deployed && canMove){
	    var legsDirection = scr_getPlayerMoveDirection();
    
	    with(legs){
	        visible = true;
    
	        self.x = other.x;
	        self.y = other.y;
		
	        if(legsDirection !=noone){
	            self.image_speed = 1;
	            self.image_angle = legsDirection;
	        }else{
	            self.image_speed = 0;
	            self.image_index = 0;
	        }
	    }
	}
	else{
	    with(legs)
	    {
	        image_speed = 0;
	        visible = false;
	    }
	}
}
