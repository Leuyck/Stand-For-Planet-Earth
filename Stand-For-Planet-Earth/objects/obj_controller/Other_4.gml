/// @description 
x=room_width/2;
y=0;
if(global.inWorld == false){
	if(instance_exists(obj_btn_parent)&&room!=rm_choseHero){
		buttonSelected = scr_selectButtonWithController("down");
	}
}