//scr_calculRectanglesForGlitchEffect(sprite,minHeightRectangle,maxHeightRectangle)
var sprite = argument[0];
var minHeightRectangle = argument[1];
var maxHeightRectangle = argument[2];

var totalHeight = sprite_get_height(sprite)-1
var topPos = 0;
var rectangleInitialPosition = ds_list_create();
ds_list_add(rectangleInitialPosition,topPos);

while(topPos != totalHeight){
	var value = 0;
	if(totalHeight-topPos >maxHeightRectangle){
		value = irandom_range(minHeightRectangle,maxHeightRectangle);
	}else if (totalHeight-topPos<=maxHeightRectangle/8){
		value = totalHeight-topPos;
	}else{
		value =irandom_range(minHeightRectangle,totalHeight-topPos);
	}
	topPos += value;
	ds_list_add(rectangleInitialPosition,topPos);
}
return rectangleInitialPosition;