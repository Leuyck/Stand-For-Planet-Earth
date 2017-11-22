
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
	room_goto(rm_option);	
}