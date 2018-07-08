/// @description Insert description here
if(DEBUG) {
	var instance = instance_position(mouse_x, mouse_y, obj_localNpc);
	if(instance != noone) {
		instance.DEBUG_PATROL_AREA = !instance.DEBUG_PATROL_AREA;
		instance.DEBUG_PATH = !instance.DEBUG_PATH;
	}
}
