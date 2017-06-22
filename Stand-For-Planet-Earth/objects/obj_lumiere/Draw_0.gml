/// @description draw the light
// You can write your code in this editor

if( !surface_exists(surf) ){
    surf = surface_create(4096,4096);
}

surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_begin(VBuffer, VertexFormat);
for(var i= 0; i<array_height_2d(instanceDetected); i++)
{
	var x1 = instanceDetected[i,1];
	var y1 = instanceDetected[i,2];
	var x2 = instanceDetected[i,3];
	var y2 = instanceDetected[i,4];
	var xx = instanceDetected[i,5];
	var yy = instanceDetected[i,6];

	scr_projectShadow(other.VBuffer,  x1,y1, xx,yy, lx,ly );
	scr_projectShadow(other.VBuffer,  xx,yy, x2,y2, lx,ly );
}

vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);
surface_reset_target();

shader_set(sha_light);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,lightIntensity );
gpu_set_blendmode(bm_add);
draw_surface_ext(surf,0,0,1,1,0,image_blend,lightIntensity);
shader_reset();
gpu_set_blendmode(bm_normal)


//DEBUG
/*
var color = make_colour_hsv((id-100000)*75, 255, 255)
draw_set_color(color)
draw_circle(lx,ly,10,true);

for(var i = 0; i<array_height_2d(instanceDetected);i++)
{
	draw_line(lx,ly,instanceDetected[i,1],instanceDetected[i,2]);
	draw_line(lx,ly,instanceDetected[i,3],instanceDetected[i,4]);
}