/// @description draw the light
// You can write your code in this editor

if(scr_isInView(0))
{
	surf = scr_checkAndCreateSurface(rad*2,rad*2,surf);

	surface_set_target(surf);
	draw_clear_alpha(0, 0);
	vertex_begin(VBuffer, VertexFormat);
	
	scr_setStaticItemInLightBuffer();
	scr_setMovingItemInLightBuffer();

	vertex_end(VBuffer);    
	vertex_submit(VBuffer,pr_trianglelist,-1);
	surface_reset_target();

	shader_set(sha_light);
	shader_set_uniform_f( LightPosRadius, lx,ly,rad,lightIntensity );
	gpu_set_blendmode(bm_add);
	draw_surface_ext(surf,x-rad,y-rad,1,1,0,image_blend,lightIntensity);
	shader_reset();
	gpu_set_blendmode(bm_normal)
}

//DEBUG
/*
var color = make_colour_hsv((id-100000)*75, 255, 255)
draw_set_color(color)
draw_circle(lx,ly,10,true);

for(var i = 0; i<array_height_2d(staticInstanceDetected);i++)
{
	draw_line(lx,ly,staticInstanceDetected[i,1],staticInstanceDetected[i,2]);
	draw_line(lx,ly,staticInstanceDetected[i,3],staticInstanceDetected[i,4]);
}