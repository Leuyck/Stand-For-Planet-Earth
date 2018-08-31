///scr_setCameraZoom();
var ratio = 1920/1080
var viewH = baseViewHeight;
var viewW = baseViewWidth;
var startDezoomBorder = 300;

with(obj_localPlayer){
	if(self.state == "dead" && self.image_index >= image_number-1){
		//no more on camera
	}else{
		var hDistanceToBorder = point_distance(other.x,other.y,other.x,self.y)
		var vDistanceToBorder = point_distance(other.x,other.y,self.x,other.y)
		viewH = max(viewH,(hDistanceToBorder+startDezoomBorder)*2)
		viewW = max(viewW,(vDistanceToBorder+startDezoomBorder)*2)
	}
}
viewH = max(viewH,viewW/ratio);
viewH = min(baseViewHeight * dezoomMaxFactor,viewH)

viewHeight+= sign(viewH - viewHeight) * abs(viewHeight-viewH)/10;
viewWidth= viewHeight * ratio;