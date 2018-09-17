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
					if(object == obj_lumiere){
						if(obj_RoomCreator.instanceSelected == false) {
							obj_RoomCreator.instanceSelected = instance_create_layer(mouse_x, mouse_y, "layer_lumiere", object);
						}
					}else{
						if(obj_RoomCreator.instanceSelected == false) {
							obj_RoomCreator.instanceSelected = instance_create_depth(mouse_x, mouse_y, depth+1, object);
						}
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
				var particular = ds_list_find_value(commandParameters, 2);
				if(is_undefined(particular)) {
					with(obj_localNpc) {
						self.DEBUG_RANGES = !self.DEBUG_RANGES;
					}
				}
				else {
					if(particular = "view") {
						with(obj_localNpc) {
							self.DEBUG_VIEW_RANGE = !self.DEBUG_VIEW_RANGE;
						}	
					}
					else if(particular = "hear") {
						with(obj_localNpc) {
							self.DEBUG_HEAR_RANGE = !self.DEBUG_HEAR_RANGE;
						}	
					}
					else if(particular = "attack") {
						with(obj_localNpc_soldier) {
							self.DEBUG_ATTACK_RANGE = !self.DEBUG_ATTACK_RANGE;
						}	
					}
				}
					
			}
			else if(what = "grid") {
				with(obj_grid) {
					self.DEBUG = !self.DEBUG;
				}	
			}
			break;
			
		case "fire":
			with(obj_RoomCreator) {
				fire1 = true;
				scr_fire1Check();
			}
			break;
		
		case "pause":
			global.gamePaused = !global.gamePaused;
			break;

	}	
	
}