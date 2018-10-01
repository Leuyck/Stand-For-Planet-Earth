///@description scr_setStaticItemInLightBuffer();
//set the statics item point projecting shadow into the light buffer
var centerOfSurfX = radius;
var centerOfSurfY = radius;
for (var i = 0; i < ds_list_size(staticInstanceDetectedList); ++i) {
	var instance = ds_list_find_value(staticInstanceDetectedList,i);
	
	if(!instance_exists(instance)) then continue;
	var inView = false
	with(instance){
		if(scr_isInView(other.radius+50)){
			inView = true;	
		}
	}
	if(inView){
		var size = instance.size;
	
		var x1 = ds_map_find_value(staticInstanceDetected[? instance], "x1");
		var y1 = ds_map_find_value(staticInstanceDetected[? instance], "y1");
		var x2 = ds_map_find_value(staticInstanceDetected[? instance], "x2");
		var y2 = ds_map_find_value(staticInstanceDetected[? instance], "y2");
		var xx = ds_map_find_value(staticInstanceDetected[? instance], "xx");
		var yy = ds_map_find_value(staticInstanceDetected[? instance], "yy");
	
		var relativeX1 = x1 - obj_camera.x + surface_get_width(surf)/2;
		var relativeY1 = y1 - obj_camera.y + surface_get_height(surf)/2;
		var relativeX2 = x2 - obj_camera.x + surface_get_width(surf)/2;
		var relativeY2 = y2 - obj_camera.y + surface_get_height(surf)/2;
		var relativeXX = xx - obj_camera.x + surface_get_width(surf)/2;
		var relativeYY = yy - obj_camera.y + surface_get_height(surf)/2;
	
		draw_circle(relativeXX,relativeYY,5,false);

		scr_projectShadow(other.VBuffer,  relativeX1,relativeY1, relativeX2,relativeY2,relativeXX,relativeYY, lx - obj_camera.x + surface_get_width(surf)/2,ly - obj_camera.y + surface_get_height(surf)/2,false,size);
	}
}