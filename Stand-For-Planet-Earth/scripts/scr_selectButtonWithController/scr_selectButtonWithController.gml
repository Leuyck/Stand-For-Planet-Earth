///scr_selectButtonWithController(up or down)
//up or down depend if you are pushing joystick up or down;

var way = argument[0]

var distance = 10000;
var instance = noone;

if(way == "down"){
	while (instance == noone){
		with(obj_btn_parent){
			if(self.y > other.y&&self.visible){
				if(distance_to_point(other.x,other.y)<distance && distance_to_point(other.x,other.y)>10){
					distance = distance_to_point(other.x,other.y)
					instance = self.id
				}
			}
		}
		if(instance == noone){
			x=room_width/2
			y=0;
		}
	}
}else if (way == "up"){
	while (instance == noone){
		with(obj_btn_parent){
			if(self.y < other.y&&self.visible){
				if(distance_to_point(other.x,other.y)<distance && distance_to_point(other.x,other.y)>10){
					distance = distance_to_point(other.x,other.y)
					instance = self.id
				}
			}
		}
		if(instance == noone){
			x=room_width/2
			y=room_height;
		}
	}
}else if(way =="left"){
	while (instance == noone){
		with(obj_btn_parent){
			if(self.x < other.x && self.visible){
				if(distance_to_point(other.x,other.y)<distance && distance_to_point(other.x,other.y)>10){
					distance = distance_to_point(other.x,other.y)
					instance = self.id
				}
			}
		}
		if(instance == noone){
			x=room_width;
		}
	}
}else if(way =="right"){
	while (instance == noone){
		with(obj_btn_parent){
			if(self.x > other.x && self.visible){
				if(distance_to_point(other.x,other.y)<distance && distance_to_point(other.x,other.y)>10){
					distance = distance_to_point(other.x,other.y)
					instance = self.id
				}
			}
		}
		if(instance == noone){
			x=0;
		}
	}
}
return instance;

