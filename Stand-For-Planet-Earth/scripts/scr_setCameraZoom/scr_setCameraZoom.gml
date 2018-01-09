///scr_setCameraZoom();
var ratio = 1920/1080
var margin = 0;
var instanceFurthest =instance_furthest(x,y,obj_localPlayer)

viewHeight = max((distance_to_object(instanceFurthest))*2,baseViewHeight)
viewHeight = min(viewHeight,baseViewHeight * dezoomMaxFactor);

viewWidth= viewHeight * ratio
