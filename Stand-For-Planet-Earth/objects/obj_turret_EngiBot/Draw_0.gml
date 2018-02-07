/// @description 
if(state =="deployed" && level <4){
	draw_sprite_ext(spr_aimLaser,0,x,y,0.4,0.25,direction+fieldOfView/2,c_red,0.3);	
	draw_sprite_ext(spr_aimLaser,0,x,y,0.4,0.25,direction-fieldOfView/2,c_red,0.3);
}
draw_self();

