///scr_btnGoCreateBtnRoom(btnPerLine)
var btnPerLine = argument[0];

var roomList = scr_getAllRoomWorldList();

var numberOfAvailableRooms = ds_list_size(roomList);
var numberOfLine = 1
		
var hSpaceBetweenBtn = ((4*room_width)/6)/(btnPerLine-1);
var vSpaceBetweenBtn = ((4*room_height)/6)/4;
var buttonToCreate = numberOfAvailableRooms+1;///add the random choice room

while(buttonToCreate>btnPerLine*numberOfLine){
	numberOfLine++	
}

var btnIndex=0;
for(var j =0; j<numberOfLine;j++)
{
	if(buttonToCreate<btnPerLine){
		btnPerLine = buttonToCreate;
	}

	for(var i =0; i<btnPerLine;i++){
		var instance = instance_create_layer(room_width/6+i*hSpaceBetweenBtn,room_height/6+j*vSpaceBetweenBtn,layer,obj_btn_room);	
		instance.appear = true;
		instance.roomName = ds_list_find_value(roomList,btnIndex);
		instance.colonne = i+1;
		instance.position = j+1;
		if(is_undefined(instance.roomName)){///create random room button;
			instance.roomName = "random";
		}
		btnIndex++;
	}
	buttonToCreate -= btnPerLine;				
	if(buttonToCreate <=0){
		break;	
	}
}