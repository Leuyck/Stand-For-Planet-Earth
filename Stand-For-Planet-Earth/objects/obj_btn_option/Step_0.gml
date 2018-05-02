/// @description 
event_inherited();

if(click) {
	//scr_transitionToNextRoom(targetRoom);
	room_goto(targetRoom);
	click = false;
}