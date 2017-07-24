///@description scr_isInView(margin)

var margin = argument0;
if(instance_exists(obj_camera))
{
	if(bbox_left>(obj_camera.x+obj_camera.viewWidth/2+margin) || bbox_right <(obj_camera.x-obj_camera.viewWidth/2-margin) 
	|| bbox_top>(obj_camera.y+obj_camera.viewHeight/2+margin) || bbox_bottom <(obj_camera.y-obj_camera.viewHeight/2-margin))
	{
		return false;
	}
	else
	{
		return true;
	}
}
else
{
	return true;
}