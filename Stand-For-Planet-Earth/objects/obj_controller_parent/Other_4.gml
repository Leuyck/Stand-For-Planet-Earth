/// @description 
if(global.inWorld == false){
	x=room_width/2;
	y=0;
	if(instance_exists(obj_btn_parent)&&room!=rm_choseHero){
		buttonSelected = scr_selectButtonWithController("down");
	}
}else{
	buttonSelected = noone;	
}

frozeDirection = false;	