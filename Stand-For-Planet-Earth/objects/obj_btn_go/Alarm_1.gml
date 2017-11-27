/// @description animation alarm;
if(animation == "out"){
	animation = "map";
}
else if(animation =="in"){
	with(obj_btn_player){
		self.heroLock = false;	
	}
	animation = "";	
}