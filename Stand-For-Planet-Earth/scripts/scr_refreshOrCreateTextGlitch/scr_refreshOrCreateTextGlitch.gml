///scr_refreshOrCreateTextGlitch(xCord,yCord, text,font,color,textoutline,outlineSize,outlineColor,parent)
var xCord = argument[0];
var yCord = argument[1];
var text = argument[2];
var font = argument[3];
var color = argument[4];
var textOutline = argument[5];
var outlineSize = argument[6];
var outlineColor = argument[7];
var parent = argument[8];

if(instance_exists(obj_text_glitch)){
	with(obj_text_glitch){
		if(self.parent == parent)	{
			if(self.text !=text){
				instance_destroy();	
			}else{
				exit;	
			}
		}
	}
}
scr_createTextGlitch(xCord,yCord,text,font,color,textOutline,outlineSize,outlineColor,parent);