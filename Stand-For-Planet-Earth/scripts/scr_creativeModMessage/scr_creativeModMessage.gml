///@description scr_creativeModMessage();

if(global.creativeMod)
{
	var commandParameters = string_split(text, " ");
	if(ds_list_size(commandParameters) == 0) {
		return;
	}
	
	var commandName = ds_list_find_value(commandParameters, 0);
	switch(commandName) {
		case "create":
			var objectName = ds_list_find_value(commandParameters, 1);
			if(is_undefined(objectName) == false) {
				var object = asset_get_index(objectName);
				if(object != -1) {
					if(obj_RoomCreator.instanceSelected == false) {
						obj_RoomCreator.instanceSelected = instance_create_depth(mouse_x, mouse_y, depth+1, object);
					}
				}
			}
			break;
			
		case "resize":
			var objectName = ds_list_find_value(commandParameters, 1);
			if(is_undefined(objectName) == false) {
				var sprite = asset_get_index(objectName);
				if(sprite != -1) {
					if(obj_RoomCreator.instanceSelected == false) {
						var createResizer = instance_create_depth(mouse_x, mouse_y,depth + 1, obj_spriteResizer);
						createResizer.sprite = sprite;
						obj_RoomCreator.instanceSelected = createResizer
					}	
				}

			}	
			break;
			
		case "debug":
			var what = ds_list_find_value(commandParameters, 1);
			if(what == "path") {
				with(obj_localNpc) {
					self.DEBUG_PATH = !self.DEBUG_PATH;
				}
			}
			else if(what = "patrol") {
				with(obj_localNpc) {
					self.DEBUG_PATROL_AREA = !self.DEBUG_PATROL_AREA;
				}	
			}
			else if(what = "range") {
				with(obj_localNpc) {
					self.DEBUG_RANGES = !self.DEBUG_RANGES;
				}	
			}
			break;
			
		case "pause":
			global.gamePaused = !global.gamePaused;
			break;

	}	
	
}