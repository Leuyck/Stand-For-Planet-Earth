///scr_setCameraZoom();
var ratio = 1920/1080
var viewH = baseViewHeight;
var viewW = baseViewWidth;
with(obj_localPlayer){
	if(self.state == "dead" && self.image_index >= image_number-1){
		//no more on camera
	}else{
		//if(self.x >other.borderMargin && self.x < room_width -other.borderMargin){
			viewH = max(viewH,(point_distance(other.x,other.y,other.x,self.y)+other.borderMargin)*2)
		//}
		//if(self.y >other.borderMargin && self.y < room_height -other.borderMargin){
			viewW = max(viewW,(point_distance(other.x,other.y,self.x,other.y)+other.borderMargin)*2)
		//}
	}
}
viewH = max(viewH,viewW/ratio);
viewH = min(baseViewHeight * dezoomMaxFactor,viewH)

if(abs(viewHeight-viewH)/10 >= 5){
	viewHeight+= sign(viewH - viewHeight) * abs(viewHeight-viewH)/10;
}else{
	viewHeight = viewH;	
}
viewWidth= viewHeight * ratio;