/// @description 
if(ds_list_find_index(roomCrossed, room) == -1){
	ds_list_add(roomCrossed,room);	
	totalCivil += instance_number(obj_localNpc_civil);
	totalSoldier += instance_number(obj_localNpc_soldier);
}