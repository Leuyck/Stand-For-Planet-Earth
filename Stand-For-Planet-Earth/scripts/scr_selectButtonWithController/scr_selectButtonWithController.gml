///scr_selectButtonWithController(up or down)
//up or down depend if you are pushing joystick up or down;

var way = argument[0]

var instance = noone;

if(way == "down"){
	var minPosition = 1;
	buttonPosition++;
	with(obj_btn_parent){
		if(self.colonne == other.colonnePosition){
			if(self.position == other.buttonPosition){
				instance = self.id;
				return instance
			}
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
			if(self.colonne == other.colonnePosition){
				if(self.position == maxPosition){
					other.buttonPosition = maxPosition;
					instance = self.id;
					return instance
				}
			}
		}
	}
}else if(way =="left"){
	var minColonne = 1;
	if(colonnePosition == 1) { 
		memoryPositionColonne1 = buttonPosition;
	}else if(colonnePosition == 2){
		memoryPositionColonne2 = buttonPosition;	
	}else if(colonnePosition == 3){
		instance = self.buttonSelected;
		return instance;
	}
	colonnePosition++;
	with(obj_btn_parent){
		if(self.colonne == other.colonnePosition && self.position == 1){
			other.buttonPosition = 1;
			instance = self.id;
			return instance;
		}
	}
	if(instance == noone){
		with(obj_btn_parent){
			if(self.colonne == minColonne && self.position == other.memoryPositionColonne1){
				other.buttonPosition = other.memoryPositionColonne1;
				other.colonnePosition = minColonne;
				instance = self.id
				return instance;
			}
		}
	}
}else if(way =="right"){
	var maxColonne = 1;
	if(colonnePosition == 1) { 
		memoryPositionColonne1 = buttonPosition
	}else if(colonnePosition == 2){
		memoryPositionColonne2 = buttonPosition;	
	}
	colonnePosition--;
	with(obj_btn_parent){
		if(self.colonne >maxColonne){
			maxColonne = self.colonne;	
		}
		if(other.colonnePosition == 1){
			if(self.colonne == other.colonnePosition && self.position == other.memoryPositionColonne1){
				other.buttonPosition = other.memoryPositionColonne1
				instance = self.id;
				return instance;
			}
		}else if(other.colonnePosition == 2){
			if(self.colonne == other.colonnePosition && self.position == other.memoryPositionColonne2){
				other.buttonPosition = other.memoryPositionColonne2;
				instance = self.id;
				return instance;
			}
		}else{
			if(self.colonne == other.colonnePosition && self.position == 1){
				other.buttonPosition = 1;
				instance = self.id;
				return instance;
			}
		}
	}
	if(instance == noone){
		with(obj_btn_parent){
			if(self.colonne == maxColonne && self.position == 1){
				other.buttonPosition = 1;
				other.colonnePosition = maxColonne;
				instance = self.id
				return instance;
			}
		}
	}
}
return instance;

