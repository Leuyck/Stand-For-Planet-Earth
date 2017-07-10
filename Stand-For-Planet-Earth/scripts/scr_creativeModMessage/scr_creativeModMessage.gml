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
				obj_roomCreator.instanceSelected = instance_create(mouse_x,mouse_y,object);
			}
		}
	}	
}