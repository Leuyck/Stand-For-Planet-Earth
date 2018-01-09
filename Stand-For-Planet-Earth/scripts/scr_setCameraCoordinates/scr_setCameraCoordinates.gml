///scr_setCameraCoordinates();
var xTotal = 0;
var yTotal = 0;
for(var i = 1; i<=instance_number(obj_localPlayer);i++){
	with(obj_localPlayer){
		if(self.playerNumber == i){
			var basePointOnCharX =self.x + lengthdir_x(self.weaponPosX, self.image_angle) - lengthdir_y(self.weaponPosY, self.image_angle)
			var basePointOnCharY =self.y + lengthdir_y(self.weaponPosX, self.image_angle) + lengthdir_x(self.weaponPosY, self.image_angle)
			xTotal += basePointOnCharX + lengthdir_x(300,self.image_angle);
			yTotal += basePointOnCharY + lengthdir_y(300,self.image_angle);

		}
	}	
}
var xTo = xTotal/instance_number(obj_localPlayer);
var yTo = yTotal/instance_number(obj_localPlayer);

x += (xTo-x)/20
y += (yTo-y)/20
