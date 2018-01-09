///scr_setCameraActive();

var active = true;
with(obj_localPlayer){
	if(self.deployed ==false){
		other.active = false;	
	}
}
if(instance_exists(obj_endGameMenu)||instance_exists(obj_pauseMenu)){
	active = false;	
}
return active;