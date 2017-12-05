var currentDistance = point_distance(xOrigin, yOrigin, x, y);
if(currentDistance > maxDistance) {
    scr_setBatteHit();
	audio_stop_sound(snd_batBot_fire2);
}
if(batteStoped && image_index == image_number-image_speed_hit)
{
    image_speed =0;
    damage=0;
}
