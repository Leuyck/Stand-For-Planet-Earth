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

