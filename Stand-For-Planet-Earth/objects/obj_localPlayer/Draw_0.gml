if(linkTarget != noone)
{
	/*var distanceToLinkTarget = distance_to_point(linkTarget.x,linkTarget.y);
	var linkSize = distanceToLinkTarget/sprite_get_width(spr_link);
    var alpha = draw_get_alpha();

	draw_sprite_ext(spr_link, 0,x,y,linkSize,1,point_direction(x,y,linkTarget.x,linkTarget.y),c_white,0.8);*/
}

draw_self();


if ((dashing || bump )&& speed >0){
	scr_motionBlur(75,direction+180)
}