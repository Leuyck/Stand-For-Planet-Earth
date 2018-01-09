///scr_setCameraZoom();
var ratio = 1920/1080
var margin = 150;
var instanceFurthest =instance_furthest(x,y,obj_localPlayer)
var viewH = baseViewHeight;
var viewW = baseViewWidth;
with(obj_localPlayer){
		viewH = max(viewH,point_distance(other.x,other.y,other.x,self.y)*2+margin)
		viewW = max(viewH,point_distance(other.x,other.y,self.x,other.y)*2+margin)
}

viewH = max(viewH,viewW/ratio);

viewHeight = min(viewH,baseViewHeight * dezoomMaxFactor)


//viewHeight = max((distance_to_object(instanceFurthest))*2,baseViewHeight)
//viewHeight = min(viewHeight,baseViewHeight * dezoomMaxFactor);

viewWidth= viewHeight * ratio
