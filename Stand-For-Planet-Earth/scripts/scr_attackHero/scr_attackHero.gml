var hero = scr_getTargetEnnemy(self, obj_localPlayer);
if(hero == noone) {
	return;
}

path_end();
ennemySpotted = true;
speed = 0;
direction = point_direction(x, y , hero.x, hero.y);
image_angle=direction;

if(path_exists(path)){
	path_delete(path);
}

scr_processFire();