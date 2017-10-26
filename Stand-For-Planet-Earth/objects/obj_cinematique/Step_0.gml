/// @description 
global.gamePaused=true;

x=view_wport[0]/2
y=view_hport[0]/2
	
if(start == true){
	if(alpha <1) then alpha +=0.1;
	if(image_yscale>1){
		image_yscale-=(image_yscale-1)/10
	}
	else{
		image_yscale =1;	
	}
}else{
	if(alpha >0) then alpha -=0.1;
	if(image_yscale<5){
		image_yscale+=(5-image_yscale)/10
	}
	else{
		instance_destroy();	
	}
}