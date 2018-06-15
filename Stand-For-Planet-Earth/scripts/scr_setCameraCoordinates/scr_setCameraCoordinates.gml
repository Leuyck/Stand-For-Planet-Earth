///scr_setCameraCoordinates();
var xTotal = 0;
var yTotal = 0;
var numberOfAlivePlayers = 0
with(obj_localPlayer){
	if(self.state == "dead" && self.image_index >= image_number-1){
		//no more on camera
	}else{
		var basePointOnCharX =self.x + lengthdir_x(self.weaponPosX, self.image_angle) - lengthdir_y(self.weaponPosY, self.image_angle)
		var basePointOnCharY =self.y + lengthdir_y(self.weaponPosX, self.image_angle) + lengthdir_x(self.weaponPosY, self.image_angle)
		xTotal += basePointOnCharX //+ lengthdir_x(300,self.image_angle); //if uncommented, set point in front of player's weapon +300;
		yTotal += basePointOnCharY //+ lengthdir_y(300,self.image_angle);
		numberOfAlivePlayers++
	}
}	
var xTo = xTotal/numberOfAlivePlayers;
var yTo = yTotal/numberOfAlivePlayers;

if(viewHeight == maxViewHeight){///the Dezoom is maximum
	with(obj_localPlayer){
		if(state != "dead"){
			if(abs(xTo - self.x)+other.borderMargin >= other.viewWidth/2){
				xTo = other.x;
			}
			if(abs(yTo - self.y)+other.borderMargin >= other.viewHeight/2){
				yTo = other.y;
			}
		}
	}
}

x += (xTo-x)/20
y += (yTo-y)/20