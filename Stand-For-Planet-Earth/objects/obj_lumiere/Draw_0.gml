/// @description draw the light
// You can write your code in this editor
if(initialized){
	var shad = shader_get_sampler_index(sha_light, "u_fLightPositionRadius");

	gpu_set_texfilter_ext(shad,false);
	gpu_set_texfilter(false);

	if(scr_isInView(radius))
	{
		surfWidth = obj_camera.viewWidth;
		surfHeight = obj_camera.viewHeight;
		surf = scr_checkAndCreateSurface(surfWidth,surfHeight,surf);

		surface_set_target(surf);
		draw_clear_alpha(0, 0);
		vertex_begin(VBuffer, VertexFormat);
	
		scr_setMovingItemInLightBuffer();
		scr_setStaticItemInLightBuffer();

		vertex_end(VBuffer);  
		vertex_submit(VBuffer,pr_trianglelist,-1);
		surface_reset_target();

		shader_set(sha_light);
		shader_set_uniform_f( LightPosRadius, lx,ly,radius,lightIntensity );
	
		gpu_set_blendmode(bm_add);
		draw_surface_ext(surf,obj_camera.x-surface_get_width(surf)/2,obj_camera.y-surface_get_height(surf)/2,1,1,0,image_blend,lightIntensity);
		shader_reset();	
		gpu_set_blendmode(bm_normal);
	
	}
}


//DEBUG
///800 de radius, prec<1;
//var distanceEntre2Points = 20
//var searchingInstancePrec = (360*distanceEntre2Points)/(2*pi*radius+distanceEntre2Points);
//for(var i=0;i<=(360/searchingInstancePrec);i++){	
//	var angleChecked = i*searchingInstancePrec;
//	draw_line_color(x,y,x+lengthdir_x(radius,angleChecked),y+lengthdir_y(radius,angleChecked),c_black,c_black);
//}
/*
var color = make_colour_hsv((id-100000)*75, 255, 255)
draw_set_color(color)
draw_circle(lx,ly,10,true);

for(var i = 0; i<array_height_2d(staticInstanceDetected);i++)
{
	draw_line(lx,ly,staticInstanceDetected[i,1],staticInstanceDetected[i,2]);
	draw_line(lx,ly,staticInstanceDetected[i,3],staticInstanceDetected[i,4]);
	//draw_text(staticInstanceDetected[i,1],staticInstanceDetected[i,2],string(i)+"   "+string(staticInstanceDetected[i,0]))
	draw_circle(lx,ly,radius,true);
	
	//draw_circle(staticInstanceDetected[i,5],staticInstanceDetected[i,6],5,false);
}
*/
for(var i = 0; i<ds_list_size(movingInstanceDetectedList);i++)
{	
	var instance = ds_list_find_value(movingInstanceDetectedList,i);
	var x1 = ds_map_find_value(movingInstanceDetected[? instance], "x1");
	var y1 = ds_map_find_value(movingInstanceDetected[? instance], "y1");
	var x2 = ds_map_find_value(movingInstanceDetected[? instance], "x2");
	var y2 = ds_map_find_value(movingInstanceDetected[? instance], "y2");
	var xx = ds_map_find_value(movingInstanceDetected[? instance], "xx");
	var yy = ds_map_find_value(movingInstanceDetected[? instance], "yy");
	draw_line(lx,ly,x1,y1);
	draw_line(lx,ly,x2,y2);
	draw_line_color(lx,ly,xx,yy,c_red,c_red);
	draw_line_color(x,y,instance.x+lengthdir_x(instance.sprite_width/2,instance.image_angle+180),instance.y+lengthdir_y(instance.sprite_width/2,instance.image_angle+180),c_blue,c_blue);
	//draw_line(movingInstanceDetected[i,1],movingInstanceDetected[i,2],movingInstanceDetected[i,1]+lengthdir_x(1000,point_direction(lx,ly,movingInstanceDetected[i,1],movingInstanceDetected[i,2])),movingInstanceDetected[i,2]+lengthdir_y(1000,point_direction(lx,ly,movingInstanceDetected[i,1],movingInstanceDetected[i,2])));
	//draw_line(movingInstanceDetected[i,3],movingInstanceDetected[i,4],movingInstanceDetected[i,3]+lengthdir_x(1000,point_direction(lx,ly,movingInstanceDetected[i,3],movingInstanceDetected[i,4])),movingInstanceDetected[i,4]+lengthdir_y(1000,point_direction(lx,ly,movingInstanceDetected[i,3],movingInstanceDetected[i,4])));
	//draw_text(movingInstanceDetected[i,1],movingInstanceDetected[i,2],string(i)+"   "+string(movingInstanceDetected[i,0]));
	//draw_text_color(movingInstanceDetected[0,0].x,movingInstanceDetected[0,0].y,string(i)+"   "+string(movingInstanceDetected[i,0]),c_red,c_red,c_red,c_red,1);
	//draw_rectangle(movingInstanceDetected[i,1],movingInstanceDetected[i,2],movingInstanceDetected[i,3],movingInstanceDetected[i,4],true);
}
//draw_line_colour(lx,ly,lx+lengthdir_x(1000,myAngle-angle_difference(myAngle,lowColAngle)/2),ly+lengthdir_y(1000,myAngle-angle_difference(myAngle,lowColAngle)/2),c_yellow,c_yellow);

gpu_set_texfilter(true);