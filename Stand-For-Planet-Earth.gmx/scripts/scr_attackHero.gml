var hero = argument[0];

path_end();
heroSpotted = true;
speed = 0;
direction = point_direction(x, y , hero.x, hero.y);

scr_processFire();

