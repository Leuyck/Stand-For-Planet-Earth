var playerReady = 0
with(obj_localPlayer){
	if(place_meeting(self.x,self.y,other.id)){
		playerReady++;	
	}
}
if(instance_exists(obj_localPlayer)){
	if(playerReady>= instance_number(obj_localPlayer)/2){
		/*if(playerReady == instance_number(obj_localPlayer)){
			countdownIsOver = true;	
		}else*/ if(countdown == noone){
			countdown = instance_create_depth(x,y,depth,obj_countdown_GUI);
			countdown.parent = self.id;
			countdown.message = message;
			countdown.duration = countdownDuration;
		}
	}else{
		if(instance_exists(countdown)){
			instance_destroy(countdown);
		}
		countdown = noone
	}
}
if(countdownIsOver == true){
	instance_destroy(countdown);
	countdown = noone
	countdownIsOver = false;
	with(obj_localPlayer){
	instance_destroy();
	}
	with(obj_spawner){
		instance_destroy();	
	}

	room_goto(rm_score);
		//scr_transitionToNextRoom(nextRoom)
}

if(instance_place(x,y,obj_localPlayer)){
	sprite_index = spr_teleporteur_active;
}else{
	sprite_index = spr_teleporteur_waiting;
}