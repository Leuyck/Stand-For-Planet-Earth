event_inherited()
if(click){

	global.IPAddress = "127.0.0.1"
	global.port = 8000

	instance_create(x, y, obj_client);
	click = false;
}



//c'est le server qui nous autorise a aller en rm_go

