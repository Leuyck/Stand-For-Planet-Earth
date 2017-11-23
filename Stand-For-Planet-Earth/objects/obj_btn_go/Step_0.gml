
///Update active status
active = scr_btnGoActiveStatus();
scr_btnGoUpdateText();
click = scr_btnGoClickStatus();

if(animation == "choseMap" && lockedRoom != noone){
	with(obj_controller_parent){
		self.frozeDirection = true;	
	}
}else{
	with(obj_controller_parent){
		self.frozeDirection = false;	
	}
}

if(click){
	if(animation == "" && alarm[1] ==-1){
		animation = "out";	
		alarm[1] = -1;
	}else if(animation == "choseMap" && lockedRoom != false){//then start game
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

if(animation == "out"){ ///out the player object
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
		}
	}
	incrementSpeed1+=incrementSpeed1/8;
	incrementSpeed2+=incrementSpeed2/12;
	if(alarm[1] ==-1){
		alarm[1] = 1*room_speed;
	}
}
if(animation == "map"){ ///create map object

	scr_btnGoCreateBtnRoom(4);
	
	y = room_height-room_height/6;
	appear = true;
	toChose = "room";
	animation = "choseMap";
}

if(animation == "in"){ /// in the player object
	appear = false;
	with(obj_btn_player){
		self.freeze=true;
		if(self.y<room_height/2){
			if(self.x<self.xstart){
				self.x+=other.incrementSpeed1;
			}else{
				self.x-=other.incrementSpeed1;
			}
		}else{
			if(self.x<self.xstart){
				self.x+=other.incrementSpeed2;
			}else{
				self.x-=other.incrementSpeed2;
			}
		}
	}
	incrementSpeed1-=incrementSpeed1/8;
	incrementSpeed2-=incrementSpeed2/12;
	with(obj_btn_room){
		appear = false;	
	}
		if(alarm[1] ==-1){
		alarm[1] = 1*room_speed;
	}
}

if(animation ==""){
	incrementSpeed1 = 1;
	incrementSpeed2 = 1;
	with(obj_btn_player){
		self.freeze =false;	
		self.x=self.xstart;
	}
	y = ystart;
	appear = true;
	toChose = "character";
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