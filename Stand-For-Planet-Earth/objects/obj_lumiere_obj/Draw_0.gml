/// @description draw the light
// You can write your code in this editor

if( !surface_exists(surf) ){
    surf = surface_create(room_width,room_height);
}

var lx = mouse_x;       // the light position, based around the mouse location
var ly = mouse_y;
var rad = 700     // the radius of the light
var tile_size = 64;     // size of a tile

var startx = floor((lx-rad)/tile_size);
var endx = floor((lx+rad)/tile_size);
var starty = floor((ly-rad)/tile_size);
var endy = floor((ly+rad)/tile_size);

surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_begin(VBuffer, VertexFormat);
with(obj_mur_epais)
{
        if(collision_circle(lx,ly,rad,self.id,true,false)!=noone)
        {
			var px1 = noone;
			var py1 = noone;
			var px2 = noone;
			var py2 = noone;
			
			if (point_direction(self.x,self.y,lx,ly)<=45 || point_direction(self.x,self.y,lx,ly)>315)
			{
				var px1 = self.x-sprite_get_xoffset(spr_mur_epais)+9;
				var py1 = self.y-sprite_get_yoffset(spr_mur_epais);
				var px2 = self.x+sprite_get_xoffset(spr_mur_epais)-9;
				var py2 = self.y+sprite_get_yoffset(spr_mur_epais);
			}
			if (point_direction(self.x,self.y,lx,ly)<=135 && point_direction(self.x,self.y,lx,ly)>45)
			{
				var px1 = self.x-sprite_get_xoffset(spr_mur_epais);
				var py1 = self.y-sprite_get_yoffset(spr_mur_epais)+9;
				var px2 = self.x+sprite_get_xoffset(spr_mur_epais);
				var py2 = self.y+sprite_get_yoffset(spr_mur_epais)-9;
			}
			if (point_direction(self.x,self.y,lx,ly)<=225 && point_direction(self.x,self.y,lx,ly)>135)
			{
				var px1 = self.x-sprite_get_xoffset(spr_mur_epais)+9;
				var py1 = self.y-sprite_get_yoffset(spr_mur_epais);
				var px2 = self.x+sprite_get_xoffset(spr_mur_epais)-9;
				var py2 = self.y+sprite_get_yoffset(spr_mur_epais);
			}
			if (point_direction(self.x,self.y,lx,ly)<=315 && point_direction(self.x,self.y,lx,ly)>225)
			{
				var px1 = self.x-sprite_get_xoffset(spr_mur_epais);
				var py1 = self.y-sprite_get_yoffset(spr_mur_epais)+9;
				var px2 = self.x+sprite_get_xoffset(spr_mur_epais);
				var py2 = self.y+sprite_get_yoffset(spr_mur_epais)-9;
			}
			with(other)
			{

                if( !scr_signTest( px1,py1, px2,py1, lx,ly) ){
			        scr_projectShadow(VBuffer,  px1,py1, px2,py1, lx,ly );
			    }
			    if( !scr_signTest( px2,py1, px2,py2, lx,ly) ){
			        scr_projectShadow(VBuffer,  px2,py1, px2,py2, lx,ly );
			    }
			    if( !scr_signTest( px2,py2, px1,py2, lx,ly) ){
			        scr_projectShadow(VBuffer,  px2,py2, px1,py2, lx,ly );
			    }
			    if( !scr_signTest( px1,py2, px1,py1, lx,ly) ){
			        scr_projectShadow(VBuffer,  px1,py2, px1,py1, lx,ly );                      
			    }  
			}                   
        }
}
vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);
surface_reset_target();

shader_set(shader0);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
draw_surface(surf,0,0);
shader_reset();