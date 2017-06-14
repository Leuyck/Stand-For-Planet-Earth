/// @description draw the light
// You can write your code in this editor

if( !surface_exists(surf) ){
    surf = surface_create(room_width,room_height);
}

surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_begin(VBuffer, VertexFormat);
for(var i= 0; i<array_height_2d(edgesCreatingShadowArray); i++)
{
    var x1 = edgesCreatingShadowArray[i,0];
    var y1 = edgesCreatingShadowArray[i,1];
    var x2 = edgesCreatingShadowArray[i,2];
    var y2 = edgesCreatingShadowArray[i,3];
     
    scr_projectShadow(VBuffer,  x1,y1, x2,y2, lx,ly );
}


vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);
surface_reset_target();

shader_set(sha_light);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
draw_surface_ext(surf,0,0,1,1,0,image_blend,0.5);
shader_reset();