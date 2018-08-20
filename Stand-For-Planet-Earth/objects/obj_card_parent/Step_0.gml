/// @description 
if(attachedDoor==noone){
	with(obj_door_card_parent)
	{	
		if(self.cardToOpen == other.object_index)
		{
		    other.attachedDoor = self.id;
		}
	}
}
var hero = instance_place(x,y,obj_localPlayer)
if(hero!=noone){
	if(carryBy==noone){
		carryBy = other.id
	}
}

