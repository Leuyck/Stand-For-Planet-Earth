///scr_btnGoCreateBtnRoom(btnPerLine)
var btnPerLine = argument[0];

var roomList = scr_getAllRoomWorldList();

var numberOfAvailableRooms = ds_list_size(roomList);
var numberOfLine = 1
		
var hSpaceBetweenBtn = ((4*room_width)/6)/(btnPerLine-1);
var vSpaceBetweenBtn = ((4*room_height)/6)/4;
var buttonToCreate = numberOfAvailableRooms+1;///add the random choice room
var btnNumber = 1

while(buttonToCreate>btnPerLine*numberOfLine){
	numberOfLine++	
}

for(var j =0; j<numberOfLine;j++)
{
	if(buttonToCreate<btnPerLine){
		btnPerLine = buttonToCreate;
	}
	for(var i =0; i<btnPerLine;i++){
		var instance = instance_create_layer(room_width/6+i*hSpaceBetweenBtn,room_height/6+j*vSpaceBetweenBtn,layer,obj_btn_room);	
		instance.appear = true;
		instance.buttonNumber = btnNumber;
		instance.roomName = ds_list_find_value(roomList,btnNumber-1);
		if(is_undefined(instance.roomName)){///create random room button;
			instance.roomName = "random";
		}
		
		
		if(instance.buttonNumber == 1){
			with(obj_controller_parent){
				self.buttonSelected = instance.id;	
			}
		}
		btnNumber++;
	}
	buttonToCreate -= btnPerLine;				
	if(buttonToCreate <=0){
		break;	
	}
}