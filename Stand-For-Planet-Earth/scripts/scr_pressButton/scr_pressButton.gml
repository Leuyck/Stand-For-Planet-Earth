///scr_pressButton(button)

var button = argument[0];
var doorList = ds_list_create()

with(obj_door)
{
    if(self.doorId == button.doorId)
    {
		ds_list_add(doorList,id);
    }
}

if(ds_list_size(doorList)>0)
{
	for(var i = 0; i<ds_list_size(doorList);i++){
		var door = ds_list_find_value(doorList,i)
	    with(door)
	    {
	        if (alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1)
	        {
	            var openSpeed = (image_number - 1) / (openTime * room_speed);
         
	            alarm[0] = openTime * room_speed;
	            image_speed = openSpeed;
	            doorOpen = true;
	        }
	    }
	}
}
ds_list_destroy(doorList);