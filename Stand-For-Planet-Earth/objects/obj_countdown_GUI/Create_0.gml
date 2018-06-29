/// @description 
timeRemaining =noone

with(obj_countdown_GUI){
	if(other.id != self.id){
		instance_destroy(self.id);
	}
}