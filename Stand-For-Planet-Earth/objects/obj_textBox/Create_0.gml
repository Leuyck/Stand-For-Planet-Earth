/// @description 
depth = -10000;
width = 300;
height = 0;
padding = 8;

count = 1;

text = scr_dialog_1(obj_PetBot,obj_BatBot);

for(var i=0;i<ds_list_size(text)-1;i++){
	if(string_height_ext(ds_list_find_value(text,i),-1,width+padding)>height){
		height=string_height_ext(ds_list_find_value(text,i),-1,width+padding);
	}
}
numberOfText = ds_list_size(text);
textAlreadyPlayed = 0;

str = "";

firstTextDuration = 1*room_speed;

alarm[0]=-1;