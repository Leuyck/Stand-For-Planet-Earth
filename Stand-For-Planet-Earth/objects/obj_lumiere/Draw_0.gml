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
     
    scr_projectShadow(VBuffer,  x1,y1, x2,y2, lx,ly );
}


vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);
surface_reset_target();

shader_set(sha_light);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
draw_surface_ext(surf,0,0,1,1,0,image_blend,0.5);
draw_surface_tiled(surf, 4096, 0); //tile la surface pour réduire consomation mémoire.
shader_reset();

draw_set_color(c_red);
for(var i = 0; i<array_height_2d(instanceDetected);i++)
{
	draw_line(lx,ly,instanceDetected[i,1],instanceDetected[i,2])
	draw_line(lx,ly,instanceDetected[i,3],instanceDetected[i,4])
}