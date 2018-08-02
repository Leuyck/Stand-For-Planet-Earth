//with (obj_localPlayer) 
//{
//    i = place_meeting(self.x,self.y,other.id)
//    zoneEntered = i !=0
//    if((zoneEntered)&&(ds_list_find_index(other.ds_playerReady,self.id)==-1))
//    {
//        ds_list_add(other.ds_playerReady,self.id);
//    }
//    else if (!zoneEntered)
//    {
//        ds_list_delete(other.ds_playerReady,(ds_list_find_index(other.ds_playerReady,self.id)));
//    }
//}
//if(ds_list_size(ds_playerReady) == instance_number(obj_localPlayer)&& nextRoom !=noone&&alarm[0]<=0)
//{
//        scr_askAllPlayersToGoToRoom(obj_nextRoom.nextRoom);
//        alarm[0] = activationTime*room_speed;
//}
var playerReady = 0
with(obj_localPlayer){
	if(place_meeting(self.x,self.y,other.id)){
		playerReady++;	
	}
}
if(instance_exists(obj_localPlayer)){
	if(playerReady>= instance_number(obj_localPlayer)/2){
		if(playerReady == instance_number(obj_localPlayer)){
			countdownIsOver = true;	
		}else if(countdown == noone){
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
	obj_spawner.spawnNumber = spawnNumberOfNextRoom;
	scr_transitionToNextRoom(nextRoom)
}

if(instance_place(x,y,obj_localPlayer)){
	sprite_index = spr_teleporteur_active;
}else{
	sprite_index = spr_teleporteur_waiting;
}