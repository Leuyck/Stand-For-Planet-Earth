///scr_setCameraZoom();
var ratio = 1920/1080
var viewH = baseViewHeight;
var viewW = baseViewWidth;
with(obj_localPlayer){
		viewH = max(viewH,point_distance(other.x,other.y,other.x,self.y)*2+other.borderMargin)
		viewW = max(viewH,point_distance(other.x,other.y,self.x,other.y)*2+other.borderMargin)
}

viewH = max(viewH,viewW/ratio);

viewHeight = min(viewH,baseViewHeight * dezoomMaxFactor)

viewWidth= viewHeight * ratio
