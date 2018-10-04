///scr_getInstanceLimitCollideAngle(x,y,distance,baseAngle,increment,instanceChecked,precision,notme);
var xx = argument[0];
var yy = argument[1];
var distance = argument[2];
var baseAngle = argument[3];
var increment = argument[4];
var object = argument[5]
var precision = argument[6];
var notMe=argument[7];

if(abs(increment)<=0.2) then return baseAngle;

var finderAngle = baseAngle+increment;
if(finderAngle >=360)then finderAngle-=360;
if(finderAngle<0) then finderAngle+=360;
increment/=2;

var collision = collision_line(xx,yy,xx+lengthdir_x(distance,finderAngle),yy+lengthdir_y(distance,finderAngle),object,precision,notMe)
if ( collision >= 0){
	return scr_getInstanceLimitCollideAngle(xx,yy,distance,finderAngle,increment,object,precision,notMe);
}else{
	return scr_getInstanceLimitCollideAngle(xx,yy,distance,baseAngle,-increment,object,precision,notMe);
}
