
///Update active status
active = scr_btnGoActiveStatus();
scr_btnGoUpdateText();
click = scr_btnGoClickStatus();

if(click){
	with(obj_btn_player){
		var playerNumber = self.buttonNumber;
		var hero = self.heroSelected;
		with(obj_controller_parent){
			if(self.playerNumber == playerNumber){
				self.heroSelected = hero;
			}
		}
	}
	animation = "out";	
}

if(animation == "out"){
	visible = false;
	with(obj_btn_player){
		
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
				other.animation ="";
				var btnPerLine = 8
				for(var i =0; i<btnPerLine;i++){
					instance_create_layer(room_width/6+i*(((4*room_width)/6)/(btnPerLine-1)),room_height/6,layer,obj_btn_room);	
				}
				other.y = room_height-room_height/6;
				other.visible = true;
			}
		}
	}
	incrementSpeed1+=incrementSpeed1/8;
	incrementSpeed2+=incrementSpeed2/12;
	//show_message(string(incrementSpeed1)+"   "+string(incrementSpeed2));
}
