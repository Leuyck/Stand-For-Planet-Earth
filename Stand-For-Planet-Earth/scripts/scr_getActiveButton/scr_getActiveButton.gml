///scr_getActivePlayerButton

var activeButton = 0;
var firstActive = false;
var secondActive = false;
var thirdActive = false;
var forthActive = false;

with (obj_btn_player)
{
    if (self.buttonNumber == 1){
		if(self.enable == true){
			firstActive = true;
		}
	}
	if (self.buttonNumber == 2){
		if(self.enable == true){
			secondActive = true;
		}
	}
	if (self.buttonNumber == 3){
		if(self.enable == true){
			thirdActive = true;
		}
	}
	if (self.buttonNumber == 4){
		if(self.enable == true){
			forthActive = true;
		}
	}
}

if (firstActive == false)
{
    activeButton = 1;
}
else if (secondActive == false)
{
    activeButton = 2;
}
else if (thirdActive == false)
{
    activeButton = 3;
}
else if (forthActive == false)
{
    activeButton = 4;
}

return activeButton;