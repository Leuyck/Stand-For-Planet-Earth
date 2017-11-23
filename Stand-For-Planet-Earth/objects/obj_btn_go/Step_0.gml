
///Update active status
active = scr_btnGoActiveStatus();
scr_btnGoUpdateText();
click = scr_btnGoClickStatus();

if(animation == "map" && lockedRoom != noone){
	with(obj_controller_parent){
		self.frozeDirection = true;	
	}
}else{
	with(obj_controller_parent){
		self.frozeDirection = false;	
	}
}

if(click){
	if(animation == ""){
		animation = "out";	
	}else if(animation == "map" && lockedRoom != false){//then start game
		with(obj_btn_player){///update controller status
			var playerNumber = self.buttonNumber;
			var hero = self.heroSelected;
			with(obj_controller_parent){
				if(self.playerNumber == playerNumber){
					self.heroSelected = hero;
				}
			}
		}
		room_goto(asset_get_index(lockedRoom));
	}
	click = false;
}

if(animation == "out"){
	appear = false;
	with(obj_btn_player){
		self.freeze=true;
		if(self.y<room_height/2){
			if(self.x<room_width/2){
				self.x-=other.incrementSpeed1;
			}else{
				self.x+=other.incrementSpeed1;
			}
		}else{
			if(self.x<room_width/2){
				self.x-=other.incrementSpeed2;
			}else{
				self.x+=other.incrementSpeed2;
			}
			if(self.x<-sprite_get_width(spr_btn_player) || self.x>room_width+sprite_get_width(spr_btn_player)){
				other.animation ="map";
				
				var btnPerLine = 4;
				var numberOfLine =3;
				var btnNumber = 1
				var numberOfAvailableRooms = 0
				var roomList = ds_list_create();
				
				for(var j = 1;j<10;j++){
					if(room_exists(asset_get_index("rm_world"+string(j)))){
						numberOfAvailableRooms++
						ds_list_add(roomList, "rm_world"+string(j));
						for(var i = 1;i<10;i++){
							if(room_exists(asset_get_index("rm_world"+string(j)+"_"+string(i)))){
								ds_list_add(roomList, "rm_world"+string(j)+"_"+string(i));
								numberOfAvailableRooms++;	
							}else{
								break;	
							}
						}
					}
				}
				if(numberOfAvailableRooms > btnPerLine){
					numberOfLine++;	
				}
				
				var hSpaceBetweenBtn = (((4*room_width)/6)/(btnPerLine-1));
				var vSpaceBetweenBtn = (((4*room_height)/6)/(numberOfLine-1));
				var buttonToCreate = numberOfAvailableRooms;
				
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
				
				
				other.y = room_height-room_height/6;
				other.appear = true;
				other.toChose = "room";
			}
		}
	}
	incrementSpeed1+=incrementSpeed1/8;
	incrementSpeed2+=incrementSpeed2/12;
}
if(animation == "in"){
	appear = false;
	with(obj_btn_player){
		self.freeze=true;
		if(self.y<room_height/2){
			if(self.x<room_width/2){
				self.x+=other.incrementSpeed1;
			}else{
				self.x-=other.incrementSpeed1;
			}
		}else{
			if(self.x<room_width/2){
				self.x+=other.incrementSpeed2;
			}else{
				self.x-=other.incrementSpeed2;
			}
			if(other.incrementSpeed2<=1){
				self.freeze=false;
				self.x=self.xstart;
				other.animation ="";
				other.y = other.ystart;
				other.appear = true;
				other.toChose = "character";
			}
		}
	}
	incrementSpeed1-=incrementSpeed1/8;
	incrementSpeed2-=incrementSpeed2/12;
	with(obj_btn_room){
		appear = false;	
	}
}
if(animation ==""){
	with(obj_btn_player){
		self.freeze =false;	
	}
}

if(appear == true){
	if(alpha <1){
		alpha+=0.02	
	}
}else{
	if(alpha>0){
		alpha-=0.04;	
	}
}