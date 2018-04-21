///scr_refreshOrCreateTextGlitchGUIxCord,yCord, text,font,color,angle,textoutline,outlineSize,outlineColor,parent)
var xCord = argument[0];
var yCord = argument[1];
var text = argument[2];
var font = argument[3];
var color = argument[4];
var angle = argument[5];
var textOutline = argument[6];
var outlineSize = argument[7];
var outlineColor = argument[8];
var parent = argument[9];

if(instance_exists(obj_text_glitch_GUI)){
	with(obj_text_glitch_GUI){
		if(self.parent == parent)	{
			if(self.text !=text){
				instance_destroy();	
			}else{
				return self.id
			}
		}
	}
}
return scr_createTextGlitchGUI(xCord,yCord,text,font,color,angle,textOutline,outlineSize,outlineColor,parent);