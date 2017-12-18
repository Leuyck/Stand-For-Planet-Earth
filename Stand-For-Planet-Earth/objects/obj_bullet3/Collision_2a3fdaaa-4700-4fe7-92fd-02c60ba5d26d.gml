action_bounce(1, 1);
speed = speed/2
image_speed = image_speed/2

var projectionAngle =(180-angle_difference(point_direction(xOrigin,yOrigin,x,y),direction))/2
scr_createBulletWallImpactParticules(x,y,direction,projectionAngle);