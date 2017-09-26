///@description scr_calculPatrolRectangle(xA,yA,xB,yB);
//can be initiate with a rectangle with A corner and B other corner
var patrolRectangle =ds_list_create();
var precision = 10

var minx = argument[0];
var miny = argument[1];
var maxx = argument[2];
var maxy = argument[3];

if(minx>maxx){
	var temp = maxx;
	maxx = minx;
	minx=temp;
}
if(miny>maxy){
	var temp = maxy;
	maxy=miny;
	miny=temp;
}


for(var i=0;i<=patrolRange;i+=precision){
	if(collision_point(x,miny,obj_mur_parent,true,true)==noone && miny>=precision){
		miny-=precision;
	}
	if(collision_point(x,maxy,obj_mur_parent,true,true)==noone && maxy<=room_height-precision){
		maxy+=precision;
	}
	if(collision_point(minx,y,obj_mur_parent,true,true)==noone && minx >=precision){
		minx-=precision;
	}
	if(collision_point(maxx,y,obj_mur_parent,true,true)==noone &&maxx<=room_width-precision){
		maxx+=precision;
	}
	if((collision_point(x,miny,obj_mur_parent,true,true)!=noone || miny==0) &&
	   (collision_point(x,maxy,obj_mur_parent,true,true)!=noone || maxy==room_height) &&
	   (collision_point(minx,y,obj_mur_parent,true,true)!=noone || minx ==0)&&
	   (collision_point(maxx,y,obj_mur_parent,true,true)!=noone || maxx==room_width)){
			break;
	   }
}

ds_list_add(patrolRectangle,minx,miny,maxx,maxy)
return patrolRectangle;