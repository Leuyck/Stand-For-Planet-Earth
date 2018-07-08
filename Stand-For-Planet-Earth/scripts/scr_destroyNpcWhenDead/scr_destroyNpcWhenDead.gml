///scr_destroyNpcWhenDead()

if (currentHealth <= 0) 
{
    currentHealth = 0;
	normalSpd = 0;
	speed = 0
	path_end();
   	
	if(genre == "robot"){
		var alreadyExists = false;
		with(obj_explosion_robot){
			if(self.parent == other.id){
				alreadyExists = true;	
				if(self.image_index >4){
					with(other){
						instance_destroy();	
					}
				}
			}
		}
		if(!alreadyExists){
			var explosion = instance_create_depth(x,y,depth-2,obj_explosion_robot);	
			explosion.parent = self.id;
		}
	}else{
		instance_destroy()
	}
}
