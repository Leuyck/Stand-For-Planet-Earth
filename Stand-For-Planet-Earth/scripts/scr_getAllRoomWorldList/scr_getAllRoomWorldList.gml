///scr_getAllRoomWorldList()
///return a list of string;

var roomList = ds_list_create();		
for(var j = 1;j<10;j++){
	if(room_exists(asset_get_index("rm_world"+string(j)))){
		ds_list_add(roomList, "rm_world"+string(j));
		for(var i = 1;i<10;i++){
			if(room_exists(asset_get_index("rm_world"+string(j)+"_"+string(i)))){
				ds_list_add(roomList, "rm_world"+string(j)+"_"+string(i));
			}else{
				break;	
			}
		}
	}
}
return roomList;