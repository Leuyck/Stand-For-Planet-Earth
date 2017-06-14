/// @description draw the light
// You can write your code in this editor

if( !surface_exists(surf) ){
    surf = surface_create(room_width,room_height);
}

surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_begin(VBuffer, VertexFormat);
for(var i= 0; i<array_height_2d(objectInLightArray); i++)
{
	var x1 = objectInLightArray[i,0];
	var y1 = objectInLightArray[i,1];
	var x2 = objectInLightArray[i,2];
	var y2 = objectInLightArray[i,3];
	 
	scr_projectShadow(VBuffer,  x1,y1, x2,y2, lx,ly );
        
}

vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);
surface_reset_target();

shader_set(shader0);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
draw_surface(surf,0,0);
shader_reset();