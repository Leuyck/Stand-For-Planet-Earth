///scr_getRandomObjectId(obj_localPlayer)
var object = argument[0]
var numberOfInstance = instance_number(object);
var target = irandom_range(1,numberOfInstance);

with(object){
	if(self.playerNumber == target){
		return self.id
	}
}