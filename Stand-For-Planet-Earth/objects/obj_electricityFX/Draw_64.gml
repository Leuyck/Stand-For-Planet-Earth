/// @description 
var scale = global.displayRatio;
if(hero.currentEnergy >=1){
	draw_sprite_ext(spr_electricity1,imageIndex1,x-(101-14)*scale,y-(107-103)*scale,scale,scale,0,c_white,1);
}
if(hero.currentEnergy >=2){
	draw_sprite_ext(spr_electricity2,imageIndex2,x-(101-60)*scale,y-(107-28)*scale,scale,scale,0,c_white,1);
}
if(hero.currentEnergy >=3){
	draw_sprite_ext(spr_electricity3,imageIndex3,x-(101-156)*scale,y-(107-30)*scale,scale,scale,0,c_white,1);
}