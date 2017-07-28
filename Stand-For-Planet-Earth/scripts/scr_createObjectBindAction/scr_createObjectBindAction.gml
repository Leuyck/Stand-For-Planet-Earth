
var hue = color_get_hue(image_blend);
var sat = color_get_saturation(image_blend);
var val = color_get_value(image_blend);
var incrementationFactor=1;

if(keyboard_check(vk_tab)) then incrementationFactor = 10;

if(mouse_wheel_up()){
	if(other.instanceSelected.object_index==obj_lumiere){
		if(keyboard_check(ord("1"))){
			hue+=incrementationFactor;
		}else if(keyboard_check(ord("2"))){
			sat+=incrementationFactor
		}else if (keyboard_check(ord("3"))){
			lightIntensity+=0.05;
			if(lightIntensity>1) then lightIntensity =1;
		}else{
			image_xscale +=incrementationFactor/10;
			image_yscale = image_xscale;
			radius = abs(image_xscale*(sprite_get_width(spr_lumiere)/2))
			//radius+=incrementationFactor*5;
		}
	}else{
		image_xscale+=incrementationFactor/10;
		image_yscale+=incrementationFactor/10;
	}
}else if(mouse_wheel_down()){
	if(other.instanceSelected.object_index==obj_lumiere){
		if(keyboard_check(ord("1"))){
			hue-=incrementationFactor;
		}else if(keyboard_check(ord("2"))){
			sat-=incrementationFactor
		}else if (keyboard_check(ord("3"))){
			lightIntensity-=0.05;
			if(lightIntensity<0.05) then lightIntensity =0.05;
		}else{
			image_xscale -=incrementationFactor/10;
			image_yscale = image_xscale;
			radius = abs(image_xscale*(sprite_get_width(spr_lumiere)/2))
			//radius-=incrementationFactor*5;
			if(radius<1)then radius = 1;
		}
	}else{
		image_xscale-=incrementationFactor/10;
		image_yscale-=incrementationFactor/10;
	}
}

x=mouse_x;
y=mouse_y;
image_blend = make_color_hsv(hue,sat,val)