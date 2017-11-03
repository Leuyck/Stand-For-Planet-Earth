/// @description scr_getAllInstanceMakingShadow();
///OBSOLETE
var instanceList = ds_list_create();

for(var i =0; i<ds_list_size(staticObjectMakingShadowList); i++)
{
	with(ds_list_find_value(staticObjectMakingShadowList,i))
	{
		if(distance_to_point(other.x,other.y)<other.radius)
		{
			ds_list_add(instanceList,self.id)
		}
	}
}
for(var i =0; i<ds_list_size(movingObjectMakingShadowList); i++)
{
	with(ds_list_find_value(movingObjectMakingShadowList,i))
	{
		ds_list_add(instanceList,self.id)
	}
}
return instanceList;