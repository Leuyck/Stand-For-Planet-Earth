///@description scr_creativeModMessage();

if(global.creativeMod)
{
	if(string_copy(text,1,7)=="create ")
	{
		var object = asset_get_index(string_copy(text,8,string_length(text)-7));
		if(object !=-1)
		{
			if(obj_roomCreator.instanceSelected == false)
			{
				obj_roomCreator.instanceSelected = instance_create_depth(mouse_x,mouse_y,depth+1,object);
			}
		}
	}	
	if(string_copy(text,1,7)=="resize "){
		var sprite = asset_get_index(string_copy(text,8,string_length(text)-7));
		if(sprite !=-1){
			if(obj_roomCreator.instanceSelected == false)
			{
				var createResizer = instance_create_depth(mouse_x,mouse_y,depth+1,obj_spriteResizer);
				createResizer.sprite = sprite;
				obj_roomCreator.instanceSelected = createResizer
			}
		}	
	
	
	}
}