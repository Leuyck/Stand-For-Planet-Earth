/// @description draw the light
// You can write your code in this editor
gpu_set_texfilter(false);
if(scr_isInView(0))
{
	surf = scr_checkAndCreateSurface(radius*2,radius*2,surf);

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
	draw_surface_ext(surf,x-radius,y-radius,1,1,0,image_blend,lightIntensity);
	shader_reset();
	gpu_set_blendmode(bm_normal)
}

//DEBUG

//var color = make_colour_hsv((id-100000)*75, 255, 255)
//draw_set_color(color)
//draw_circle(lx,ly,10,true);

//for(var i = 0; i<array_height_2d(staticInstanceDetected);i++)
//{
//	draw_line(lx,ly,staticInstanceDetected[i,1],staticInstanceDetected[i,2]);
//	draw_line(lx,ly,staticInstanceDetected[i,3],staticInstanceDetected[i,4]);
//	draw_text(staticInstanceDetected[i,1],staticInstanceDetected[i,2],string(i)+"   "+string(staticInstanceDetected[i,0]))
//}
//for(var i = 0; i<array_height_2d(movingInstanceDetected);i++)
//{
//	draw_line(lx,ly,movingInstanceDetected[i,1],movingInstanceDetected[i,2]);
//	draw_line(lx,ly,movingInstanceDetected[i,3],movingInstanceDetected[i,4]);
//	draw_line(movingInstanceDetected[i,1],movingInstanceDetected[i,2],movingInstanceDetected[i,1]+lengthdir_x(1000,point_direction(lx,ly,movingInstanceDetected[i,1],movingInstanceDetected[i,2])),movingInstanceDetected[i,2]+lengthdir_y(1000,point_direction(lx,ly,movingInstanceDetected[i,1],movingInstanceDetected[i,2])));
//	draw_line(movingInstanceDetected[i,3],movingInstanceDetected[i,4],movingInstanceDetected[i,3]+lengthdir_x(1000,point_direction(lx,ly,movingInstanceDetected[i,3],movingInstanceDetected[i,4])),movingInstanceDetected[i,4]+lengthdir_y(1000,point_direction(lx,ly,movingInstanceDetected[i,3],movingInstanceDetected[i,4])));
//	draw_text(movingInstanceDetected[i,1],movingInstanceDetected[i,2],string(i)+"   "+string(movingInstanceDetected[i,0]));
//	draw_text_color(movingInstanceDetected[0,0].x,movingInstanceDetected[0,0].y,string(i)+"   "+string(movingInstanceDetected[i,0]),c_red,c_red,c_red,c_red,1);
//}

gpu_set_texfilter(true);