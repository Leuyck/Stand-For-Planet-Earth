///scr_exitLevel(roomToGo)
var roomToGo=argument[0]
with(obj_localPlayer){
    instance_destroy();
}
with(obj_spawner){
	instance_destroy();	
}
with(obj_card_parent){
	instance_destroy();	
}
//with(obj_healthBar){
//	instance_destroy();	
//}
scr_closeConnectionToServer();
instance_create(x,y,obj_cleaningRoom);
obj_cleaningRoom.roomToGo = roomToGo;
