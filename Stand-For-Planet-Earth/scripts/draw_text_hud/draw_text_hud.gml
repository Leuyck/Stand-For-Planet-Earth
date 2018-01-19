/// draw_text_hud(x,y,string,sep,width,xscale,yscale,rot,c1,c2,c3,c4,alpha)
//
//  Draws a string of text at a position relative to the top-left corner
//  of the screen, regardless of the current view position or rotation.
//  It takes the same arguments as draw_text_ext_transformed_color().
//
/// GMLscripts.com/license
{
    var xoffset,yoffset,tx,ty;

    xoffset = argument0;
    yoffset = argument1;

	var viewXview = obj_camera.x-obj_camera.viewWidth/2
	var viewYview = obj_camera.y-obj_camera.viewHeight/2
	
	var viewAngle = 0;
	
    tx = viewXview + obj_camera.viewWidth/2 + lengthdir_x(xoffset-obj_camera.viewWidth/2,-viewAngle) 
        + lengthdir_x(yoffset-obj_camera.viewHeight/2,-viewAngle-90);
    ty = viewYview + obj_camera.viewHeight/2 + lengthdir_y(xoffset-obj_camera.viewWidth/2,-viewAngle) 
        + lengthdir_y(yoffset-obj_camera.viewHeight/2,-viewAngle-90);

    draw_text_ext_transformed_color(tx,ty,argument2,argument3,argument4,argument5,argument6,
    argument7-viewAngle,argument8,argument9,argument10,argument11,argument12);
    return 0;
}