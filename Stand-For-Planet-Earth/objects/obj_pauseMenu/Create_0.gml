/// @description 

width = obj_camera.viewWidth/2;
height = obj_camera.viewHeight/2;

color = make_color_rgb(4,12,41)

instance_create_depth(obj_camera.x,obj_camera.y,-10001,obj_btn_resume);

lineStartX1 = x-width/2;
lineStartY1 = y-height/2;
lineEndX1 = x+width/2;
lineEndY1=y+height/2;

yLinePosition = lineStartY1 +20;

