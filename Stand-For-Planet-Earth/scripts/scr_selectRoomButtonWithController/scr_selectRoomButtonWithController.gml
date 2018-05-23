///scr_selectRoomButtonWithController(up or down)
//up or down depend if you are pushing joystick up or down;

var way = argument[0]

var instance = noone;

if(way == "down"){
	var minPosition = 1;
	buttonPosition++;
	with(obj_btn_parent){
		if(self.colonne == other.colonnePosition && self.position == other.buttonPosition){
			instance = self.id;
			return instance
		}
	}
	if(instance == noone){
		with(obj_btn_parent){
			if(self.colonne == other.colonnePosition){
				if(self.position == minPosition){
					other.buttonPosition = minPosition;
					instance = self.id;
					return instance
				}
			}
		}
	}
}else if (way == "up"){
	var maxPosition = 0;
	buttonPosition--;
	with(obj_btn_parent){
		if(self.colonne == other.colonnePosition){
			if(self.position >maxPosition){
				maxPosition = self.position;	
			}
			if(self.position == other.buttonPosition){
				instance = self.id;
				return instance
			}
		}
	}
	if(instance == noone){
		with(obj_btn_parent){
			if(self.colonne == other.colonnePosition && self.position == maxPosition){
				other.buttonPosition = maxPosition;
				instance = self.id;
				return instance
			}
		}
	}
}else if(way =="right"){
	var minColonne = 1;
	colonnePosition++;
	with(obj_btn_parent){
		if(self.colonne == other.colonnePosition && self.position == other.buttonPosition){
			instance = self.id;
			return instance;
		}
	}
	if(instance == noone){
		with(obj_btn_parent){
			if(self.colonne == minColonne && self.position == other.buttonPosition){
				other.colonnePosition = minColonne;
				instance = self.id
				return instance;
			}
		}
	}
}else if(way =="left"){
	var maxColonne = 1;
	colonnePosition--;
	with(obj_btn_parent){
		if(self.position == other.buttonPosition){
			if(self.colonne >maxColonne){
				maxColonne = self.colonne;	
			}
		}
	}
	with(obj_btn_parent){
		if(self.colonne == other.colonnePosition && self.position == other.buttonPosition){
			instance = self.id;
			return instance;
		}
	}
	if(instance == noone){
		with(obj_btn_parent){
			if(self.colonne == maxColonne && self.position == other.buttonPosition){
				other.colonnePosition = maxColonne;
				instance = self.id
				return instance;
			}
		}
	}
}
return instance;

