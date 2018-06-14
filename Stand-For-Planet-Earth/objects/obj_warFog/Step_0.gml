/// @description 
if(!enabled){
	//with(obj_door_parent){
	//	if(self.doorOpen && place_meeting(self.x,self.y,other.id))	{
	//		other.enabled = true;	
	//		break;
	//	}
	//}
	if(attachedWarFogNumber!=noone ){
		with(obj_warFog){
			if (self.warFogNumber == other.attachedWarFogNumber && self.enabled){
				other.enabled = true;
				break;
			}
		}
	}
}else{
	alpha-=apparitionSpeed;	
}

if(alpha<=0){
	instance_destroy();
}