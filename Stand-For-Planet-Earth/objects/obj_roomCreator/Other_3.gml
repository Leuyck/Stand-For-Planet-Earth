/// @description Insert description here
// You can write your code in this editor


for(var i =0; i<=array_height_2d(instanceCreated)-1;i++){
	if(instanceCreated[i,7]!=0){
		var instanceName =instanceCreated[i,0]
		var xPosition =instanceCreated[i,1]
		var yPosition = instanceCreated[i,2]
		if(instanceName =="obj_lumiere"){
			var instanceRadius = instanceCreated[i,3]
			var instanceHue = instanceCreated[i,4]
			var instanceSat =instanceCreated[i,5]
			var intensity =instanceCreated[i,6]
			var instanceId =instanceCreated[i,7]
		}
					
		show_debug_message(instanceName+"  "+string(i) + " x = " + string(xPosition)+ " y = " +string(yPosition)
		+" radius = "+string(instanceRadius)+" Hue = "+string(instanceHue)+" Saturation = "+string(instanceSat)+" Intensity = "+string(intensity));
	}
}	
for(var i =0; i<=array_height_2d(instanceResized)-1;i++){
		var spriteName =instanceResized[i,0]
		var width =instanceResized[i,1]
		var height = instanceResized[i,2]
					
		show_debug_message(spriteName+"  "+string(i) + " Width = " + string(width)+ " pixels, Height = " +string(height)+" pixels");
}			