///scr_setCameraCoordinates();
var xTotal = 0;
var yTotal = 0;
var numberOfAlivePlayers = 0
with(obj_localPlayer){
	if(self.state == "dead" && self.image_index >= image_number-1){
		//no more on camera
	}else{
		var basePointOnCharX =self.x + lengthdir_x(self.relativeBoutCanonX, self.image_angle) - lengthdir_y(self.relativeBoutCanonY, self.image_angle)
		var basePointOnCharY =self.y + lengthdir_y(self.relativeBoutCanonX, self.image_angle) + lengthdir_x(self.relativeBoutCanonY, self.image_angle)
		xTotal += basePointOnCharX //+ lengthdir_x(300,self.image_angle); //if uncommented, set point in front of player's weapon +300;
		yTotal += basePointOnCharY //+ lengthdir_y(300,self.image_angle);
		numberOfAlivePlayers++
	}
}	
var xTo = xTotal/numberOfAlivePlayers;
var yTo = yTotal/numberOfAlivePlayers;
yTo = clamp(yTo,baseViewHeight/2,room_height-(baseViewHeight/2));
xTo = clamp(xTo,baseViewWidth/2,room_width-(baseViewWidth/2));

x += (xTo-x)/20
y += (yTo-y)/20

//make the camera border = to room border;
x = clamp (x,baseViewWidth/2,room_width-(baseViewWidth/2));
y = clamp (y,baseViewHeight/2,room_height-(baseViewHeight/2));